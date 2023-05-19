#Find the missing element in a given permutation.
def solution(a)
    perm = (1..a.size+1).to_a
    missing = (perm - a).first

end
a= (1..100).to_a
a.delete_at(80)
p solution(a)