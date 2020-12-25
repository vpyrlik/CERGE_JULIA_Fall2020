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
g.(x,x)
g.(x,[1; 2; 3])

#looping and mapping
## function in a for-loop
###basic idea -- not very effective realization
y = similar(x)
for i=1:length(x) #try it with @time
    y[i] = f(x[i])
end

###for-loop shortcut
y = [f(xᵢ) for xᵢ=x] #also try it with @time

## basic map() syntax
map(f,x)

###compare time
@time map(f,x)
@time [f(xi) for xi=x]

##anonymous functions
###basic syntax
x -> x^2-x+1
(x₁,x₂) -> (x₁^2+x₂^2)^.5
(x...) -> sum(x.^2)^.5

###example of use
@time map(a -> 1/(1+exp(-a)), range(-3,stop=3,step=0.025))
@time [1/(1+exp(-a)) for a=range(-3,stop=3,step=0.025)]

## different iterators
X = rand(10^3)
Y = hcat([rand(10^3) for i=1:50]...)
Z = cat([hcat([rand(10^3) for i=1:50]...) for j=1:10]...,dims=3)

###eachindex()
map(x -> exp(-x), X)
map(i -> exp(-X[i]), eachindex(X))

map(i -> X[i]/X[i-1]-1, eachindex(X)[2:end])

###Iterators.product()
map(ij -> Y[ij[1],ij[2]], Iterators.product(1:200,1:10))

###Iterators.filter()
map(x -> x-0.5, Iterators.filter(x -> x>0.5,X))

###see other methods of Iterators @ https://docs.julialang.org/en/v1/base/iterators/

###eachrow(), eachcol()
Yrowmeans = [sum(y)/size(Y,2) for y=eachrow(Y)]
Ycolmeans = [sum(y)/size(Y,1) for y=eachcol(Y)]

###compare time
@time [sum(Y[i,:])/size(Y,2) for i=1:size(Y,1)]
@time [sum(y)/size(Y,2) for y=eachrow(Y)]
@time map(y -> sum(y)/size(Y,2),eachrow(Y))

###eachslice()
[sum(Y)/size(Y,2) for y=eachslice(Y,dims=1)]

[inv(z'z)*(z'X) for z=eachslice(Z,dims=3)]

###compare syntax and time and memory
@time [inv(Z[:,:,i]'Z[:,:,i])*(Z[:,:,i]'X) for i=1:size(Z,3)]
@time [inv(z'z)*(z'X) for z=eachslice(Z,dims=3)]

#recursion: an alternative definition of a function
## recursive function over vector
f = function(y)
    if size(y)<=(1,)
        return(y^2+y+1)
    else
        return([f(yi) for yi=y])
    end
end
f(x)
f.(x)

###compare time
@time f(x)
@time f.(x)

## same via mapping
f1 = function(y)
    if size(y)<=(1,)
        return(y^2+y+1)
    else
        return(map(f1,y))
    end
end
f1(x)
f1.(x)

###compare time
@time f1(x)
@time f1.(x)

##same via Iterators.only() --- overcomplicating thins!
###see details @ https://docs.julialang.org/en/v1/base/iterators/#Base.Iterators.only
f2 = function(y)
    try
        y=Iterators.only(y)
        return(y^2+y+1)
    catch
        return(map(f1,y))
    end
end
f2(x) == f1(x)

@time f1(x)
@time f1.(x)
@time f2(x)
@time f2.(x)
