def solution(a)
    #O(n)
    return 0 if a.size == 1
    tr = {}
    mid_size = a.size/2

    a.each_with_index do |v, i|
        if tr[v]
            tr[v] += 1
            return i if tr[v] > mid_size
        else
            tr[v] = 1
        end
    end

    return -1

end




p solution([-1])
