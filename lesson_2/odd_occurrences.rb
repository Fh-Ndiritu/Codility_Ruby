#Find value that occurs in odd number of elements.

def solution(a) 
    #  O(n) * O(logn) = O(nlogn)
    a.tally.each do |k, v|
       return k if v.odd?
    end
end

  