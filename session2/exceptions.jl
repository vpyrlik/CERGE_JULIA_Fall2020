"""
Session 2:
Exceptions handling
"""

# try-catch
## the basic syntax
sqrt(4)
sqrt("oops")

try #try doing something
    #some commands that might result in an arror
    sqrt("oops")
catch e #catch that error into e
    #some handling of the error
    println("something went wrong...")
end

## assigning
x = 5# or  ="oops"
y = try
    sqrt(x)
catch e
    "x=$x is not a number"
end

# types of errors
## e.g. DomainError
x = -5# or ="oops"
sqrt(-5)
try
    sqrt(x)
catch e
    if isa(e, DomainError)
        sqrt(complex(x))
    else
        "not domain error, but something else"
    end
end
