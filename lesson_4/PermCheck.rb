

def solution(a)
    
    unless a.empty?
        perm = (1..a.size).to_a
        if perm - a == [] && a - perm == [] 
            return 1
        end
    end

    return 0

end

p solution([2])
