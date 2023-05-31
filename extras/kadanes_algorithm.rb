def solution(a)
    sum = 0
    max_sum = 0
    max_value = -1.0/0.0 

    # O(n)
    a.each do |elem|
        max_value = elem if max_value < elem

        new_sum = sum+elem
        if new_sum > 0
            max_sum = [new_sum, max_sum].max
            sum = new_sum
        elsif new_sum < 0
            sum = 0
        end
    end 

    return max_value if max_value < 0
    max_sum

end

p solution([-20, -3, -2, 5, -7, -6, -10, -4, -11, -23])