

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

def solution(a)
    #O(nlogn && n/2)  ===> #O(nlogn)
    tr = a.tally #O(n)
    tr_max = tr.sort_by{|k, v| v}.last #O(logn)

    unless a.empty? 
        return a.find_index(tr_max.first)   if tr_max.last > a.size/2 #O(n/2)
    end


    return -1

end


p solution([-1])
