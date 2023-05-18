#Rotate an array to the right by a given number of steps.

def solution(a, k)

    unless a.empty? || a.size > 100
        # O(n)
        for i in 1..k
            last = a.pop
            a.unshift(last)
        end
    end

    a

end

p solution([1, 2, 3, 4], 5)