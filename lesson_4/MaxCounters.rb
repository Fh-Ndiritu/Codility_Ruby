require 'benchmark'
def solution(n, a)
    counters = Array.new(n, 0)
    
    a.each do |value|
        if value > n
            counters = [counters.max]*n
        else
            counters[value-1] += 1
        end

    end

    counters



end

p solution(5, [3, 4, 4, 6, 1, 6, 4])
