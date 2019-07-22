************************************************************************
file with basedata            : md190_.bas
initial value random generator: 990940866
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  16
horizon                       :  115
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     14      0       22        4       22
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           6  11  15
   3        3          2          13  15
   4        3          3           5   7   8
   5        3          3           6  11  15
   6        3          3           9  10  14
   7        3          1          11
   8        3          3           9  10  14
   9        3          1          12
  10        3          1          12
  11        3          2          13  14
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
  2      1     5       7    8    9    6
         2     7       6    6    8    4
         3     8       4    4    8    2
  3      1     2       4    7    8   10
         2     6       4    5    7    7
         3     7       3    3    7    6
  4      1     4       4    9    5   10
         2     4       3    6    6    7
         3     9       3    4    4    3
  5      1     1       9    9    7    6
         2     4       5    5    6    5
         3     8       3    4    6    4
  6      1     2       8    7    8    5
         2     3       7    6    6    3
         3     9       7    5    5    3
  7      1     8       5    1    8    8
         2     9       5    1    6    8
         3    10       5    1    5    8
  8      1     4      10    2    7    7
         2     6       8    2    7    6
         3     9       7    1    6    3
  9      1     1       6    7    9    9
         2     3       5    4    8    8
         3     4       3    4    8    8
 10      1     3       7    6    7    7
         2     6       7    6    7    6
         3     8       7    6    7    5
 11      1     6       9    7    6    4
         2     7       8    7    6    4
         3     8       8    7    5    1
 12      1     2       7    5    5    6
         2     3       7    5    2    4
         3     7       6    4    1    3
 13      1     3       3    4    6    2
         2     4       2    3    6    2
         3    10       2    3    5    2
 14      1     4       9    8    4    5
         2     9       8    8    3    4
         3    10       5    8    3    3
 15      1     2       8    4    8    9
         2     3       8    4    8    4
         3     8       4    4    7    1
 16      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   20   16   98   94
************************************************************************
