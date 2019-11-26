


import gurobi_MRCPSP
import Gantt_chart_draw

def main(file):
    ins=gurobi_MRCPSP.Instance()
    ins.loadData(file)
    start,finish=ins.Gurobi_RSPSP_J14()
    Gantt_chart_draw.Gantt_chart(start,finish)

if __name__ == '__main__':
    main(file="./data/j14.mm/j1463_3.mm")