# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output:  321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

# @param {Integer} x
# @return {Integer}

input1 = 123
output1 = 321

input2 = -123
output2 = -321

input3 = 120
output3 = 21


def reverse(x)
  # convert int to array of characters
  # Skip first character if it is "-"
  # iterate through array backwards and build new string with reversed integer
  # convert new string back into integer and return
  integer_array = x.to_s.split('')
  return (integer_array.shift + integer_array.reverse.join('')).to_i if integer_array.first == "-"
  integer_array.reverse.join('').to_i
end

puts reverse(input1) == output1
puts reverse(input2) == output2
puts reverse(input3) == output3
