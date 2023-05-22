def solution(s, o, q)
    factors = {"A" => 1, "C" => 2, "G" => 3, "T" => 4}

    minimal_factors = []

    o.each_with_index do |v, i|
        subs = s[v..q[i]].chars.uniq
        minimal_factors << factors[subs.min]
    end

    minimal_factors

end