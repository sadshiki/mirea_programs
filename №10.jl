include("mainfunctions.jl")

function chess!(r::Robot, cell_size::Int)
    path = go_to_west_south_corner_and_return_path!(r)
    x=0; y=0
    horisontalDirection = Ost
    
    while !(isborder(r, Nord) && isborder(r, Ost))
        marker_special!(r, x, y, cell_size)
        if move_up_condition(r)
            move!(r, Nord)
            y += 1
            marker_special!(r, x, y, cell_size)
            horisontalDirection = inverse(horisontalDirection)
        end
        
        move!(r,horisontalDirection)
        (horisontalDirection == Ost) ? x += 1 : x -= 1
    end

    marker_special!(r, x, y, cell_size)

    go_to_west_south_corner_and_return_path!(r)
    go_by_path!(r, path)
end
