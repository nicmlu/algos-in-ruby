# Question: 
# Given a large array of integers and a window of size ww, find the current maximum value in the window as the window slides through the entire array.

#Brute Force Solution 

def find_max_sliding_window (arr, window_size)
  result = []

  if window_size > arr.length 
    return result
  end 
  
  arr.each_cons(window_size) do |set|
    result.push((set.max))
  end 
  return result
end 

# Test Brute Force
find_max_sliding_window([1, 2, 3, 4, 3, 2, 1, 2, 5], 4)
# Expected Output: [4, 4, 4, 4, 3, 5]
# Actual Output: [4, 4, 4, 4, 3, 5]

find_max_sliding_window([1, 2, 3, 4, 3, 2, 1, 2, 5], 3)
# Expected Output: [3, 4, 4, 4, 3, 2, 5]
# Actual Output: [3, 4, 4, 4, 3, 2, 5]

find_max_sliding_window([1, 2, 3], 4)
# Expected Output: []
# Actual Output: []

# Deque Data Structure Solution
# Time Complexity: O(n) linear
# Space Complexity: O(w) linear based on window size 

def find_max_sliding_window (arr, window_size)
  result = []

  if (arr.length == 0)
    return result
  end
  
  if (window_size > arr.length)
    return result
  end

  window_ = []
  #find out max for first window
  for i in 0 .. window_size-1
    while (window_.length > 0 && arr[i] >= arr[window_[window_.length - 1]])
      window_.pop()
    end
    window_.push(i)
  end

  result.push(arr[window_[0]])

  for i in window_size .. arr.length-1
    # remove all numbers that are smaller than current number
    # from the tail of list
    while (window_.length > 0 && arr[i] >= arr[window_[window_.length - 1]])
      window_.pop()
    end

    #remove first number if it doesn't fall in the window anymore
    if (window_.length > 0 && (window_[0] <= i - window_size))
      window_.shift()
    end

    window_.push(i)
    result.push(arr[window_[0]])
  end
  
  return result
end

array = [1, 2, 3, 4, 5, 6,7, 8, 9, 10]  
puts "Array = " + array.to_s
res = find_max_sliding_window(array, 3)
puts "Max = " + res.to_s

array1 = [10, 6, 9, -3, 23, -1, 34, 56, 67, -1, -4, -8, -2, 9, 10, 34, 67]
  puts "Array = " + array1.to_s
res1 = find_max_sliding_window(array1, 3)
puts "Max = " + res1.to_s

