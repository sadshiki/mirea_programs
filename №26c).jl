include("mainfunctions.jl")

function fibonacсi(n)
    if n == 0
        return 1, 0
    else
        current, prev = fibonacсi(n-1)
        return current, prev+current
    end
end