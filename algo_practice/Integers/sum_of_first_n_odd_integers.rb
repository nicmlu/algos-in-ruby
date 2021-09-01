# Given an integer n, return the sum of the first n positive odd integers.
# Easy

# Constraints
# n ≤ 1,000

# Example 1
# Input: n = 5
# Output: 25
# Explanation: The first 5 odd integers are [1, 3, 5, 7, 9] and its sum is 25.


def solve(n)
    curr_num = 1 
    ints = []

    while ints.length < n
        if curr_num % 2 != 0 
            ints.push(curr_num)
        end
        curr_num += 1
    end 

    return ints.sum
end 