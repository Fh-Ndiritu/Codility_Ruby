def solution(a)
    unless a.size < 2
        max_passing_cars = a.count(1)
        if max_passing_cars > 0
            passing_cars = 0
            cars_behind = 0
            a.each do |v|
                if v == 0
                    passing_cars += max_passing_cars - cars_behind
                    return -1 if passing_cars > 1000_000_000
                else
                    cars_behind +=1
                    return passing_cars if  max_passing_cars <= cars_behind
                end
                
            end

            passing_cars

        end
    end

    return 0

end

p solution([0])