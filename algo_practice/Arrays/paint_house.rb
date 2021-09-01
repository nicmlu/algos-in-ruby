# Question:

# There is a row of n houses, where each house can be painted one of three colors: red, blue, or green. The cost of painting each house with a certain color is different. You have to paint all the houses such that no two adjacent houses have the same color.

# The cost of painting each house with a certain color is represented by an n x 3 cost matrix costs.

# For example, costs[0][0] is the cost of painting house 0 with the color red; costs[1][2] is the cost of painting house 1 with color green, and so on...
# Return the minimum cost to paint all houses.

# Solution 1 - Tabulation:
def min_cost(costs)
    n = costs.length
    return 0 if n == 0
  
  (1..n - 1).each do |i|
    costs[i][0] += [costs[i - 1][1], costs[i - 1][2]].min
    costs[i][1] += [costs[i - 1][0], costs[i - 1][2]].min
    costs[i][2] += [costs[i - 1][0], costs[i - 1][1]].min
  end
  
  [costs[n - 1][0], costs[n - 1][1], costs[n - 1][2]].min 
    
end

# Solution 2 - Easily be generalized to arbitrary number of colors:

def min_cost(costs)
  costs.reduce([0]*3) { |prev, now| now.map { |n| n + prev.rotate![0,2].min } }.min
end
