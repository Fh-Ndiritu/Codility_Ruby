
require 'benchmark'

def solution(a)
    
    positives = a.uniq.select{ |elem| elem > 0}
    return 1 if positives == []

    missing = ((1..a.max).to_a - positives)
    return a.max+1 if missing == []

    return missing.first


end

p solution([1, 3, 6, 4, 1, 2])
# p solution([1, 2, 3])
# p solution([-1, -2, 0,1, 2])

# p Benchmark.measure{ p solution((1..100_000).to_a.shuffle) }
