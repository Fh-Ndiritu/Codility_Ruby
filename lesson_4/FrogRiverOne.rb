require 'benchmark'
def solution(x, a)
    
    blank_positions = (1..x).to_a

    unless a.empty?
        a.each_with_index do |value, index|
            blank_positions.delete(value)
            return index if blank_positions.size == 0
        end
    end

end

def solution2(x, a)
    
    blank_positions = (1..x).to_a
    return -1 if (blank_positions - a).size > 0

    i = 0
    while blank_positions.size > 0
        blank_positions.delete(a[i])
        i += 1
    end
    i

end


def solution3(x, a)
    valid_path = {}
    a.each_with_index do |v, i|
        valid_path[v] = true
        return i if valid_path.size == x
    end

    -1

end

p solution3(5, [1, 3, 1, 4, 2, 3, 5, 4])


# p Benchmark.measure{solution(100_00, (1..100_0).to_a)}
# p Benchmark.measure{solution2(100_00, (1..100_00).to_a)}
# p Benchmark.measure{solution3(100_000, (1..100_000).to_a)}
  