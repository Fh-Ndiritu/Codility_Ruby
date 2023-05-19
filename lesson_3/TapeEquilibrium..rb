#Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
def solution(a)
    # Implement your solution here
    left = a[0]
    right = a.sum - left
    min = (left - right).abs


    return min if a.size == 2

    for i in (2..a.size-1)
        left += a[i-1]*2
        diff = (left - right).abs
        min = diff if diff < min
    end
    
    min

end


