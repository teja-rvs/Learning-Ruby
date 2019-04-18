# This problem was recently asked by Google.

# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

# Bonus: Can you do this in one pass?

## Solution 

values = [10, 15, 3, 7]

sum = 17

# Approach 1

# Iterate through numbers and find the pairs

length = values.size - 1

result = []

for i in 0..length
    for j in i..length
        result.push([values[i], values[j]]) if values[i] + values[j] == sum 
    end
end

puts "#{result}"

# Approach 2

# using ruby methods to find the pairs

def find_pairs(numbers, sum)
    numbers.combination(2).find_all{ | x, y | x + y == sum }
end

puts "#{find_pairs(values, sum)}"

# Now make find_pairs method as an array method with pair length

class Array
    def find_pairs(pair, sum = 0) # initized to zero so when no variable is passed like values.find_pairs
        self.combination(pair).find_all{ | a | a.sum == sum }
    end 
end

puts "#{values.find_pairs(2, sum)}"

puts "#{values.find_pairs(3, 20)}"
