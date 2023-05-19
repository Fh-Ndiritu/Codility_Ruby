#Count minimal number of jumps from position X to Y.

def solution(x, y, d)
    # Implement your solution here

   return 0 if y <= x

   return ((y-x).to_f / d).ceil
    
end

p solution(10, 15, 30)