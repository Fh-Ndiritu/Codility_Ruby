def solution(a)
    min_sum = 1.00/0.00
    min_index = -1
  
  
    a.each_with_index do |elem, i|  #O(n)
        if a.size > i+2
            if (elem + a[i+1]).to_f/2 < min_sum
                min_sum = (elem + a[i+1]).to_f/2 
                min_index = i
            end
    
            if (elem + a[i+1] + a[i+2]).to_f/3 < min_sum
                min_sum = (elem + a[i+1] + a[i+2]).to_f/3 
                min_index = i
            end
        end
    
    end

    if (a[-2] + a[-1]).to_f/2 < min_sum
        min_sum = (a[-2] + a[-1])/2 
        min_index = a.size - 2
    end
  
    min_index
  
end

p solution([-3, -5, -8, -4, -10])
p solution([4, 2, 2, 5, 1, 5, 8])