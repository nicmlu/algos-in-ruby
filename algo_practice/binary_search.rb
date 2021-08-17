# QUESTION:
# Given a sorted array of integers, return the index of the given key. Return -1 if the key is not found.

# Use the divide and conquer strategy
# Examples:
    # Input: [2, 3, 5, 7, 11, 14, 21, 27, 29, 31, 32]
    # Key: 21
    # Output: 6

    # Input: [2]
    # Key: 4
    # Output: -1 

# Recursive Solution
# Time: O(log n)
# Space: O(log n)

# At every step, consider the array between low and high indices
# Calculate the mid index.
# If the element at the mid index is the key, return mid.
# If the element at mid is greater than the key, then change the index high to mid - 1.
# The index at low remains the same.
# If the element at mid is less than the key, then change low to mid + 1. The index at high remains the same.
# When low is greater than high, the key doesn’t exist and -1 is returned.


