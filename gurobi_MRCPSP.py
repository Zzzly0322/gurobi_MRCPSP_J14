from gurobipy import *
import data_read_MRCPSP

import random
import matplotlib.pyplot as plt
import  numpy as np
import  copy
import time

class Instance():
    def __init__(self):
        self.successors=[]
        self.job_num_successors=[]
        self.job_predecessors = []
        self.job_successors=[]
        self.job_model_resource={1:{1:[0,0,0,0],2:[0,0,0,0],3:[0,0,0,0]},16:{1:[0,0,0,0],2:[0,0,0,0],3:[0,0,0,0]}}
        self.job_model_duration={1:{1:0,2:0,3:0},16:{1:0,2:0,3:0}}
        self.resource_capacity=[]
        self.number_job =None
        self.number_renewable_resources = None
        self.number_unrenewable_resources = None
        self.resource_capacity = None
        self.upper_bound=228

    def loadData(self,file):
        data_read_MRCPSP.dataStore(self, file)

    def Gurobi_RSPSP_J14(self):
        # Set the upper bound Completion Time of the project
        # we set T=100 when you solve the J30 problem
        T=50
        Mo=3
        # Initial the gurobi model
        m = Model()
        #add variables xjt note that j activity start at time t
        x = m.addVars(self.number_job,Mo,T,vtype=GRB.BINARY, name='e')

        # Set the obj which means the minmize the Completion Time
        obj=0
        for t in range(T):
            for jm in range(Mo):
                obj+=x[self.number_job-1,jm,t]*t
        # t_dict={(i,j):j
        #    for i in range(number_job) for j in range(T)
        # }
        m.setObjective(obj,GRB.MINIMIZE)

        # Constraint only can be done once
        m.addConstrs(x.sum(i,'*','*') == 1 for i in range(self.number_job))

        # Timing constraint
        for i in range(self.number_job):
            if len(self.job_predecessors[i]) !=0:
                for j in self.job_predecessors[i]:
                    sum_ti=0
                    sum_tj=0
                    for jm in range(Mo):
                        for t0 in range(T):
                            sum_ti+=x[i,jm,t0]*t0
                        for t1 in range(T):
                            sum_tj+=x[j-1,jm,t1]*(t1+self.job_model_duration[j][jm+1])
                        m.addConstr(sum_ti>=sum_tj)
        # Resource constraint

        for k in range(self.number_renewable_resources):
            for t3 in range(40):
                use_resource=0
                for j in range(self.number_job):
                    for jm2 in range(Mo):
                        use_resource+=sum(x[j,jm2,tt] for tt in range(t3,t3+self.job_model_duration[j+1][jm2+1]))*self.job_model_resource[j+1][jm2+1][k]
                m.addConstr(self.resource_capacity[k]-use_resource>=0)
        use_un=[]
        for r in range(self.number_unrenewable_resources):
            use_unresource=0
            for j in range(self.number_job):
                for t4 in range(T):
                    use_unresource+=sum(x[j,mm,t4]*self.job_model_resource[j+1][mm+1][2+r] for mm in range(Mo))
            m.addConstr(self.resource_capacity[r+2]-use_unresource >=0)

        m.write('lnear_model.lp')
        m.optimize()


        # Get the solution
        start=[]
        model=[]
        for v in m.getVars():
            if v.x!=0:
                print('%s %g' % (v.varName, v.x))
                a=eval(v.varName[1:])
                model.append(a[1]+1)
                start.append(a[2])

        finish=[]
        count=0
        for start1 in start:
            finish.append(start1+self.job_model_duration[count+1][model[count]])
            count+=1

        # print('Obj: %g' % m.objVal)
        print('model',model)
        print('start',start)
        print("finish",finish)
        print(use_un)
        return start,finish
