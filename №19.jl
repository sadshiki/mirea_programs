include("mainfunctions.jl")

function marklim!(robot, side)
    if isborder(robot, side)
        putmarker!(robot)
    else
        move!(robot, side)
        marklim!(robot, side)
        move!(robot, inverse(side))
    end
end
