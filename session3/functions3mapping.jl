"""
Session 3:
dotting, looping, recurring, and mapping
"""

#dot-syntax with functions
##an example of dot-syntax
x = range(0,stop=2pi,length=100)
sin(x)
sin.(x)

##user-defined dot-syntax
f = function(y)
    y^2+y+1
end
f(x[10])
f(x)
f.(x)

g = function(y,p)
    (y^2+y+1)^p
end
g(1,2)
g(x,2)
g.(x,2)
g.(2,x)

#looping
### TBA

#mapping
### TBA

#recursion: an alternative definition of a function
f = function(y)
    if size(y)<=(1,)
        return(y^2+y+1)
    else
        return([f(yi) for yi=y])
    end
end
f(x)
f.(x)

@time f(x)
@time f.(x)

#anonymous functions
### TBA
