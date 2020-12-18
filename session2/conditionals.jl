"""
Session 2:
Booleans and conditional evaluation
"""

# boolean values
## the boolean type
true
false
typeof(true)

!true
!false

~true
~false

## conditions
### simple conditions
x = 2
y = 2.0
z = 5.5
a = "something"
b = Inf
c = -Inf

x == z
x >  z
x <= z

x == y

x == a

x < b
y < c

b == c
b <  c
c <= b

## be careful with some types
missing == 0
missing == missing
missing == nothing

nothing == nothing
nothing == 0

nothing == undef
undef == undef

t1 = undef
t2 = undef
t1 == undef
t2 == t1

## boolean vectors
X = [1; 2.5; -3.3; 5; 1]
Y = [-2.2; 0.5; 1.2; 2.8; 1]
Z = [.1; 4; 2.0]
Xt= X'
A = [1 2; 3 4]
B = [2 2; 3 3]

X == Y
Xt == X

X == Z
X < Z

X .== Y

X .== Z #won't work!

X .== Xt

A == B
A .== B

## boolean operations
a = "text"
b = "Text"
x = 2.5
y = 0.2

x == y || a == b

x > 1 && y < 1
x > 1 && y > 1

!(x == a)
!(a !== b)

(X .== Y) && (X.^2 .== Y.^2) #won't work!
(X .== Y) .* (X.^2 .== Y.^2) #vectorized el-by-el AND
(X .== Y) .+ (X.^2 .== Y.^2) .> 0 #vectorized el-by-el OR

# conditional evaluation
## If-then-else
x = 2
y = .5
if x < y
    println("x is less than y")
else
    println("x is not less than y")
end

## using elseif
if x < y
    println("x is less than y")
elseif x > y
    println("x is greater than y")
else
    println("x is equal to y")
end

if x < 0 && x < y
    println("x is less than y")
elseif x < 0 && x > y
    println("x is greater than y")
elseif x == 0
    println("x is zero")
elseif y == x
    println("x is not zero, and x is equal to y")
else
    println("something else")
end

## assigning the result
compare = if x>0
    "positive"
else
    "negative"
end

## a simple short-cut
a == "Text" ? "it's true" : "no true..."

z = x<0 ? 0 : x

Z .= Y.>0 ? Y : 0 #won't work -- need a singleton boolean condition
