"""
Session 1:
Basic Syntax Examples
"""

# Assigning values, Basics of naming and typing
## Assigning values
A = 5
B = 3.5
C = "something"

## Unicode names
α  = 0.45
Σ₁ = 2
🎃 = "Boo!"

## Some constants
π
pi

## Some special types/values
D = nothing
E = missing
F = undef

# Vectors and arrays
## structuring vectors
[1; 2; 3]
[1, 2, 3]
[1 2 3]

["a", "b", "c"]

[1, "a", missing, [1 ["a" 1] 3], nothing]

[1 2 3 missing 5 6 7]

## assigning and accessing vectors
X = [4, 45, 1.3, 0.3, missing]
X[1]
X[2:4]
X[4:2] #won't work!
X[4:(-1):2]
X[:]

#last, first, etc
X[end]
X[2:end]
X[end-1]
last(X)

## notice how types of elements in vector interact!
typeof(X)

X[2]
typeof(X[2])

X[5]
typeof(X[5])

typeof(X[1:4])

## an array
Y = [1 2 3; 4 5 6]
Y[2, 3]
Y[3, 2] #won't work!

## notice, how accessing single index elemnts works
Y[1]
Y[5]
Y[:]

## accessing a dimension
Y[1,:] #notice the type and the size!
Y[:,2]
