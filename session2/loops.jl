"""
Session 2:
for-loop
"""

# foor-loop
## basic syntax
for i=1:10
    #some repeated expressions here
    println("i=$i")
end

##notice the scope
i

j = 20
a = 10
for j=1:5
    a = a+j^2
end
a
j

## let's try assigning it
x = for i=1:10
    i^2
end
x

## breaking out
for x=["a" "b" "out" "c" "d"]
    x=="out" ? break : println(x)
end

y = for i=1:3
    if i==2
        break
    else
        println("i=$i")
    end
end
y

## on error
z = for i=1:3
    if i==2
        "text" = 2
    else
        println("i=$i")
    end
end
z

## a useful short-cut
sinX = [sin(x) for x=-pi:0.01:pi]

"""
another option is to use while-loop
look it up!
"""
