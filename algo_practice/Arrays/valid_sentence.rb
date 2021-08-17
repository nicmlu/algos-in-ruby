# Problem: # Validate string against dictionary
# Question: 

# 1) Given a string and a list of words, determine if the string is valid based on the list of words

# 2) Determine if the given string contains valid words while ignoring extraneous characters

# Examples: 
# string = "practicemakesperfect"
# dictionary = ['practice', 'perfect', 'makes']
#Expected Outcome: True 

# string = "practicemakesperfectx"
# dictionary = ['practice', 'perfect', 'makes']
#Expected Outcome: False 

# string = "makespracticexperfect"
# dictionary = ['practice', 'perfect', 'makes']
#Expected Outcome: False 

#Pseudocode 
# interate through each char in string 
# once word is located [i..j], string is valid, i begins at next element [j+1]
# boolean to initialize at False 
# downcase input string, dict words are downcased 
# keep track of current string and 
# continue to add a char at each step until dict includes word 

# Time Complexity: 
# Space Complexity: 

def valid_sentence(string, dictionary)
    is_valid = "False" 
    input_string = string.downcase 
    temp_string = ''

    input_string.each_char do |char|
        curr_string = temp_string + char
        if dictionary.include?(curr_string)
            is_valid = "True" 
            temp_string = ''
        else 
            temp_string = curr_string
            is_valid = "False" 
        end 
    end 
    return is_valid 
end 
