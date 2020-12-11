"""
Session 2:
Compund expressions and chains
"""

# The two types of expressions
## begin-blocks
### the basic syntax
begin
    #commands go here
    a = [0.5; -0.1]
    A = [1 -0.5; 0.1 1.2]
    A^(-1)*a
    #👆 the last evaluated thing is the outcome of the expression
end

### it can be assigned to a variable
FullName = begin
    FirstName = "Vladimir"
    LastName  = "Pyrlik"
    "$FirstName $LastName"
end

## ;-chains
### basic syntax
(a=4; b=7; 10*a+b)

###also can be assigned
sumx = (x1=1; x2=2; x1+x2)

# The scope of the variables
## all the variables are of the same level that the expression!
a
A
b
FirstName

## unless you use local variables!
begin
    local y = 2
    local a = 8
    a + y
end
y #not defined outside of the exppression
a #remains what it was before the expression!
