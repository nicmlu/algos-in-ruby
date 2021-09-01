# Given a list of integers nums, return the largest difference of two consecutive integers in the sorted version of nums.

# Constraints: n ≤ 100,000 where n is the length of nums

# Example 1
# Input: nums = [4, 1, 2, 8, 9, 10]
# Output: 4
# Explanation: The largest gap is between 4 and 8.

# SOLUTION
# Easy Level 
    def solve(nums)

        sorted_nums = nums.sort

        diff = 0 

        sorted_nums.each_cons(2) do |num1, num2|
            if num2 - num1 > diff 
                diff = num2 - num1
            end 
        end 

        return diff


    end