# Given a binary search tree root, and integers lo and hi, return the count of all nodes in root whose values are between [lo, hi] (inclusive).

# Constraints: n ≤ 100,000 where n is the number of nodes in root

# Example 1
# Input: root = [3, [2, null, null], [9, [7, [4, null, null], [8, null, null]], [12, null, null]]]
# lo = 5
# hi = 10

# Output: 3
# Explanation: Only 7, 8, 9 are between [5, 10].

# SOLUTION
# Medium Level 
   def solve(root, lo, hi)
        count = 0 

        return 0 if root.nil?

        if root.val >= lo && root.val <= hi
            return 1 + (solve(root.left, lo, hi)) + (solve(root.right, lo, hi)) 
        elsif root.val < lo 
            return solve(root.right, lo, hi) 
        else
            return solve(root.left, lo, hi) 
        end 

         return count
        
    end