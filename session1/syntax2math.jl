"""
Session 1:
Basic Math
"""

# Basic Operators and Operations
## elementary math
5 + 3
2.8 + 2.7
3 + 4.5 #check the types!

-2.4

2 - 4
4.4 - 7 #check the types

2*3
2.5*4.4
3*2.2 #check the types

2/3
4.5/2 #check the types
Int(4/2)#check the types

2^5
10^(-2) #not so elementary...
3^2.5

## notice that operators are also functions
+(2, 3.1)
+(2.1, 0.2, 4.2, 5.8)

*(1, 4, 5.5)

-(8, 3.5)
-(2, 1, 8) #won't work!

/(4, 9)
/(3, 4, 6) #won't work!

## a bit beyond numbers
"a"*"b"
*("a","b","c")
*("a", "b", 5) #won't work! neither will "a"*5
string(5)*"a"

# Operating with vectors
## Basic operators to vectors
A = [ 0.1,  2.1, -0.2,  0.5]
B = [ 0.0; -1.4;  1.1; -0.8]
C = [-1.2   2.2   0.5  -3.0]

###stuff that works
A+B
A-B
A/B #check the size!

###stuff that won't work!
A*B
A^B
A+C
A-C
A/C
A^C

###also won't work!
3+A
B-0.5
C^3
2^B

###check out these though
2.1 * B
C * 2
A / 3
C / 5 #hm... what happened?

## dot-operations
3 .+ A
B .+ A
A .* B
B ./ 2
B .^ [1; 2; 3; 4]
2.5 .^ C

###be careful! keep track of the dimensions
A .+ C
C ./ B
[2; 3.5] .* [1.2; -3.1; 0.4] #won't work!

## matrix operations
X = [0.5 2. 3.2; -1.1 2.0 2.0; 0. 0. -4.2]
Y = [-0.2 2.1 0.4; 0.1 0.1 0.8; -0.5 0.2 0.2]
Z = [2 0.25 8]

X+Y
X-Y
X*Y
X/Y
X^2
X^(-1)

Z*X

###transpositions and crossprod-s
X' #compare with transpose(X)
Z'
A'

X'Y #compare with X'*Y
A'B
Z'Z

M = X'
M1=transpose(X)
