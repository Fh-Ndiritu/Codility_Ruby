def solution(a, b, k)

    first =  (a.to_f / k).ceil
    last = (b.to_f / k).floor

    return last - first + 1

end


p solution(7, 8, 3)
