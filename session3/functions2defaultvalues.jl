"""
Session 3-4:
default values
"""

#optional arguments
##default values
###setting default values
zero_dist = function(x1, x2, y1=0, y2=1)
    if y2==1
        dist = abs(x1)+abs(x2)
    else
        dist = (x1^y2+x2^y2)^(1/y2)
    end
    return(dist <= y1)
end

###calling with default values
zero_dist(0,0)
zero_dist(10^(-9), 10^(-18))
zero_dist(10^(-9), 10^(-18), 10^(-15))
zero_dist(10^(-9), 10^(-18), 10^(-10))
zero_dist(10^(-9), 10^(-18), 10^(-6))

zero_dist(10^(-9), 10^(-18), 10^(-15), 2)
zero_dist(10^(-9), 10^(-18), 10^(-15), 10)
zero_dist(10^(-9), 10^(-18), 10^(-15), 40)

zero_dist(10^(-9), 10^(-18), y2=2)

##keyword arguments
###setting the defaults
zero_dist = function(x; tol=0, pow=1) #notice the semicolon!
    if pow==1
        dist = sum(abs.(x))
    else
        dist = sum(x.^pow)^(1/pow)
    end
    return(dist <= tol)
end

###calling with keyword arguments
zero_dist([10^(-8),2^(-24)])
zero_dist([10^(-8),2^(-24)]; pow=40)
zero_dist([10^(-8),2^(-24)], pow=100) #notice that semicolon is not necessary

##functions with variable number of arguments aka varargs
###defining varargs
va1 = function(x,a...)
    a.+x
end

###calling varargs
va1(1,2,3)
va1(1)
va1(1,2)
va1([1,2,3]...)
