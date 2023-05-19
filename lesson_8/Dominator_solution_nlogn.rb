def solution(a)
    #O(nlogn && n/2)  ===> #O(nlogn)
    tr = a.tally #O(n)
    tr_max = tr.sort_by{|k, v| v}.last #O(logn)

    unless a.empty? 
        return a.find_index(tr_max.first)   if tr_max.last > a.size/2 #O(n/2)
    end


    return -1

end