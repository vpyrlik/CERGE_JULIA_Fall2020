"""
Session 3:
functions basics
"""

#basic assignment ways
##traditional syntax
###declaring a funtion
f1 = function(x1,x2,x3)
    x1^2+x2^2+x3^2
end

typeof(f1) #check the type of f1

###calling a function
f1(0,0,0)
f1(1.,2,-2.5)

f1(1)
f1([1,2,3])
f1(1,0,"a")

###alternative defining
function f2(x1,x2,x3)
    x1^2+x2^2+x3^2
end

##short syntax
f5(x1,x2,x3) = x1^2+x2^2+x3^2

##compare and change functions
f1 == f2

function f3(x1,x2,x3)
    x1^2+x2^2+x3^2
end
f2 == f3

f4 = f1
f4 == f1

f1(x1,x2,x3) = x1^2+x2^2+x3^2

f1 = function(x1,x2,x3)
    x1*x2*x3
end

f4 == f1

#using return
##basic return
###syntax
f1 = function(x1,x2,x3)
    return(x1^2+x2^2+x3^2)
end

###structure
f6 = function(x1,x2)
    x3 = x1+x2
    return(x3/2) #function execution doesn't go further!

    #bucnh of stuff that is not used
    x+"a"
end
f6(1,2)

##conditional return
g = function(x,y)
    if x > y
        return(x)
    else
        return(y)
    end
end

h = function(x)
    if !(typeof(x) <: Number)
        return("must provide a number")
    elseif !(x>=0)
        return("must provide a non-negative number")
    else
        return(sqrt(x))
    end
end
h("a")
h([1 2 3])
h(-2)
h(9)

## return nothing
n = function()
    println("x is $x")
    println("this function does something, but returns nothing")
    return(nothing)
end
n(5)
