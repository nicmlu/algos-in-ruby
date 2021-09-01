# Given a singly linked list node, return the value of the middle node. 
# If there's two middle nodes, then return the second one.

# Bonus: Solve using O(1) space.

# Constraints: n ≤ 100,000 where n is the number of nodes in node

# Example 1
# Input: node = [0, 1, 2]
# Output: 1

#SOLUTION 
# Medium Level 
   def solve(node)
        fast_pointer = node
        slow_pointer = node

        return node.next.val if node.next.next == nil 

        while (fast_pointer && fast_pointer.next) do 
        fast_pointer = fast_pointer.next.next
        slow_pointer = slow_pointer.next
        end 
        return slow_pointer.val

       

    end