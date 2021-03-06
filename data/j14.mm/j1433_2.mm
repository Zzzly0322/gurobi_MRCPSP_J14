************************************************************************
file with basedata            : md161_.bas
initial value random generator: 774515669
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  113
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       22        8       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           7   9  15
   3        3          3           5  11  12
   4        3          3           5   6  10
   5        3          3          13  14  15
   6        3          3           8  11  14
   7        3          3          10  11  14
   8        3          1           9
   9        3          1          12
  10        3          1          12
  11        3          1          13
  12        3          1          13
  13        3          1          16
  14        3          1          16
  15        3          1          16
  16        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     3      10    0    2    5
         2     4       6    0    2    4
         3     7       2    0    2    3
  3      1     4       6    0    7    9
         2    10       0    9    4    6
         3    10       0    8    5    8
  4      1     3       0    4   10    8
         2     7       0    4    9    8
         3     9       0    3    6    7
  5      1     4       0    7    7    7
         2     8       3    0    6    6
         3     9       0    6    6    6
  6      1     2       0    5   10    5
         2     3       0    4   10    3
         3     7       2    0    9    2
  7      1     2       0   10    5    6
         2     4       8    0    5    5
         3     6       4    0    5    3
  8      1     6       0    4    5   10
         2     7       0    4    4    9
         3    10       6    0    4    9
  9      1     3       4    0    6    4
         2     6       3    0    6    4
         3     7       0    7    3    3
 10      1     3       9    0    8    8
         2     8       0    8    5    7
         3    10       7    0    3    7
 11      1     3       0   10    5    2
         2     6       8    0    4    2
         3     8       0    9    4    2
 12      1     4       0    6    4    4
         2     6       5    0    3    4
         3     9       0    4    2    2
 13      1     4       9    0    9    5
         2     6       9    0    5    4
         3     6       0    1    4    4
 14      1     4       8    0    9    5
         2     4       0    4   10    5
         3     8       6    0    7    4
 15      1     1       0    6    8    6
         2     4       4    0    8    5
         3     7       0    6    6    5
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
    8   10   73   68
************************************************************************
