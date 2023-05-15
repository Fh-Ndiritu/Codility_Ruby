def solution(a)
    a_binary = a.to_s(2)
  
    gaps = []
    prev_value = a_binary[0]
  
    i = 1
    while i < a_binary.size #O(n)
      if a_binary[i] == '0' && prev_value == '1'
        gaps << 1
        
        k = i + 1
        while k < a_binary.size && a_binary[k] == '0'
          gaps[-1] += 1
          k += 1
        end
        
        i = k
      end
  
      prev_value = a_binary[i]
      i += 1
    end
  
    gaps = gaps[0..-2] if a_binary[-1] == '0'
  
    return gaps.max if gaps.size > 0
  
    return 0
  
  
  
  end
  
  p solution(20)