=begin
Question: 
You are given a string s, which consists only of lowercase English letters. 
Your task is to find the number of adjacent triplets of unique characters within s. 
In other words, count the number of indices i, such that s[i], s[i + 1], and s[i + 2] are all pairwise distinct.

Example:
For s = "abcdaaae", the output should be threeCharsDistinct(s) = 3.
If i = 0, s[0] = 'a', s[1] = 'b', and s[2] = 'c', which are pairwise distinct;
If i = 1, s[1] = 'b', s[2] = 'c', and s[3] = 'd', which are pairwise distinct;
If i = 2, s[2] = 'c', s[3] = 'd', and s[4] = 'a', which are pairwise distinct;
If i = 3, s[3] = 'd', s[4] = 'a', and s[5] = 'a', which are not pairwise distinct because s[4] and s[5] are equal;
If i = 4, s[4] = 'a', s[5] = 'a', and s[6] = 'a', which are not pairwise distinct because all pairs of characters are equal;
If i = 5, s[5] = 'a', s[6] = 'a', and s[7] = 'e', which are not pairwise distinct because s[5] and s[6] are equal.
If i = 6 or i = 7, at least one of characters s[i + 1] or s[i + 2] won't exist.

For s = "abacaba", the output should be threeCharsDistinct(s) = 2.
There are only 2 indices meeting the criteria:
i = 1: s[1] = 'b', s[2] = 'a', and s[3] = 'c';
i = 3: s[3] = 'c', s[4] = 'a', and s[5] = 'b'.
All other triplets will contain more than one a character.

Input/Output
[execution time limit] 4 seconds (rb)
[input] string s
A string consisting of lowercase English letters.

Guaranteed constraints:
1 ≤ s.length ≤ 1000.
[output] integer
The number of indices i in s, such that characters s[i], s[i + 1], and s[i + 2] all exist and are pairwise distinct.
=end

# Pseudocode
# if string has less than 3 char, return 0 
# iterate through each char in the string 
# once 3 char are identified, see if they are unique
# if distinct, increment distinct_sets count by 1, increase index by 1 
# if not distinct, DONT increment distinct_set count, increase index by 1 
# return distinct_sets count 


#Solution
def threeCharsDistinct(s)
    distinct_sets = 0 

    if (s.length < 3)
        return distinct_sets
    end 

    sub_strings = s.split(//)

    # is_valid = "False" 
    # input_string = string.downcase 
    curr_string = []
    temp_string = []

    s.each_char do |char|
        if curr_string.length == 3
            curr_string == curr_string.uniq ? 
        elsif  
            curr_string.length < 3
            curr_string = temp_string.push(char)
            

            temp_string = curr_string
            is_valid = "False" 
        end 
    end 
    return is_valid 


    
end 


