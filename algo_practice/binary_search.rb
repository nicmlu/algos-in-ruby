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

def binary_search_rec(a, key, low, high)
# At every step, consider the array between low and high indices
# When low is greater than high, the key doesn’t exist and -1 is returned.
  if low > high
    return -1
  end


# Calculate the mid index.
  mid = low + ((high - low) / 2)

# If the element at the mid index is the key, return mid.
  if a[mid] == key
    return mid

# If the element at mid is greater than the key, then change the index high to mid - 1.
# The index at low remains the same.
  elsif key < a[mid]
    return binary_search_rec(a, key, low, mid - 1)
  else
# If the element at mid is less than the key, then change low to mid + 1. The index at high remains the same.
    return binary_search_rec(a, key, mid + 1, high)
  end
end

# Initial formula, passing arguments, including low (0) and high (a.length - 1)
def binary_search(a, key)
  return binary_search_rec(a, key, 0, a.length - 1)
end

# Testing sample key inputs against provided array 
arr = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]
inputs = [10, 49, 99, 110, 176]

# Iterate through the sample key inputs to puts method_name(arr, input) = index for each input, returns -1 for elements not included in arr
for i in 0..inputs.length-1
  puts "binary_search(arr, " + (inputs[i]).to_s+ ") = " +  (binary_search(arr, inputs[i]).to_s)
end


# Iterative Solution
# Time: O(log n)
# Space: O(1)
# Similar to recursive but better space complexity as low/high indices are calculated during each step and not repassed to the method

def binary_search(a, key)
# At every step, consider the array between low and high indices
# Define initial low and high indices 
  low = 0
  high = a.length - 1


# If low value is less or equal to high value, calculate the mid index.
  while low <= high
    mid = low + ((high - low) / 2)

# If the element at the mid index is the key, return mid.
    if a[mid] == key
      return mid
    end

# If the element at mid is greater than the key, then change the index high to mid - 1.
# The index at low remains the same.
    if key < a[mid]
      high = mid - 1

# If the element at mid is less than the key, then change low to mid + 1. The index at high remains the same.
    else
      low = mid + 1
    end
  end

# Through interations, the low indice will be larger than the high indice if the key doesn’t exist, so -1 is returned.
  return -1
end

# Testing sample key inputs against provided array
arr = [1, 10, 20, 47, 59, 63, 75, 88, 99, 107, 120, 133, 155, 162, 176, 188, 199, 200, 210, 222]
inputs = [10, 49, 99, 110, 176]

# Iterate through the sample key inputs to puts method_name(arr, input) = index for each input, returns -1 for elements not included in arr
for i in 0..inputs.length-1
  puts "binary_search(arr, " + (inputs[i]).to_s+ ") = " +  (binary_search(arr, inputs[i]).to_s)
end