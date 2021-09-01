# First Fit Room
# Easy 

# You are given a list of integers rooms and an integer target. Return the first integer in rooms that's target or larger. If there is no solution, return -1.

# Constraints:  0 ≤ n ≤ 100,000 where n is the length of rooms

# Example 1
# Input: rooms = [15, 10, 30, 50, 25] target = 20
# Output: 30
# Explanation: 30 is the first room that's at least as large as 20.

# Example 2
# Input: rooms = [15, 10, 30, 50, 25] target = 51
# Output: -1
# Explanation: There's no room that's at least 51.

# Solution
# Time Complexity: O(n), n being the number of rooms in array 
# Are the room nums sorted, could this be a binary search to improve Big O?
def solve(rooms, target)

    rooms.find(-> {-1}) {|room| room >= target}

end