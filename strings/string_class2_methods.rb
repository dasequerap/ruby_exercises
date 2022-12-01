first_name = 'Danny'
last_name = 'Glover'
second_first_name = 'Hans'
second_last_name = 'Zimmer'
city = 'Miami'
country = 'USA'
phrase = '  A test  '

# Concatenate
puts first_name + last_name
puts 'John'.concat(' Doe')
puts 'Danny ' << 'Glover' << ' Composer'
puts first_name.concat(' ' + last_name)
p first_name
second_first_name += ' ' + second_last_name
puts second_first_name
puts 'Williams'.prepend('John ')

# Upcase (upper case) and downcase (lower case)
puts 'New York'.upcase
puts 'New York'.downcase
puts 'New York'.swapcase

# ! means a permanent modifier
city.upcase!
puts city

# Deletes a substring on a string if exists
puts country.delete('A')
puts country.delete('SA')

# Replaces part of a string with a substring
puts 'Alabama'.replace('Ohio')
puts 'Alabama'.gsub! 'a', 'e'
puts 'Alabama'.gsub!('a', 'e')

# Capitalizes the first letter of a string
puts 'oregon'.capitalize

# Reverses the string
puts 'Alaska'.reverse

# Gets the length of a string
puts 'This is a string'.length
puts 'This is a string'.length.class
puts 'This is a string'.size
puts 'This is a string'.size.class
puts

# Gets the n-th position of a string. N must be lower than string.length
puts 'String'[0]

# These methods strips the white spaces from a string
puts phrase.strip
puts phrase.lstrip
puts phrase.rstrip

# Find a substring in a string. Returns false if the string wasn't found
puts 'string'.include? 's'
puts 'string'.include? 'z'
puts 'string'.include? 'stri'

# Inspect works in a similar way to the 'p' method
puts 'Hello World'.inspect
p 'Hello World'

# Extract
my_string = 'This is a long string line'
puts my_string[2]
puts my_string.slice(2)
puts my_string[100]
puts my_string[-1]
puts my_string.slice(-1)
puts my_string[0, 5]
puts my_string.slice(0, 5)
puts my_string[0, my_string.size]
puts my_string[-7, 5]
puts my_string.slice(-7, 5)
puts

# Extract with range:
my_string_two = 'This is a long string line'
puts my_string_two[1..8]
puts my_string_two.slice(1..8)
puts my_string_two[1...8]
puts my_string_two.slice(1...8)
p my_string_two[1...100]
p my_string_two.slice(1...100)
puts my_string_two[1...-3]
puts my_string_two.slice(1...-3)

# Replace with brackets
my_string_rep = 'This is a long string line'
my_string_rep[0] = 'S'
puts my_string_rep
my_string_rep[0, 4] = 'That'
puts my_string_rep
my_string_rep[22..26] = 'live'
puts my_string_rep
puts

# nil and empty
empty_string = nil
puts empty_string.nil?
puts ''.empty?
empty_string = ''
puts empty_string.empty?
puts empty_string[100].nil?
puts ''.nil?
puts

# Split
split_string = 'Hello, this is an example of a large string. Thanks!'
p split_string.split # Separates by spaces
p split_string.split.class
p split_string.split('i')
p split_string.split('') # Splits every char of the string
puts

# Iterate over strings
# 1. Split:
'String'.split('').each { |char| puts char }
puts

# 2. Each char method
'String'.each_char { |char| puts char }
puts

# 3. Chars method
'String'.chars.each { |char| puts char }
puts

# 4. Chars with method
'String'.chars.each_with_index { |index| puts 'String'[index] }
puts
'String'.chars.each_with_index { |char, index| puts "#{char} #{'String'[index]}" }

# Join method
names = ['Curly', 'Larry', 'Moe']

p names.join
p names.join(', ')

# Count
p 'My hello world string'.count('wo')
p 'My hello world string'.count('za')
p 'My hello world string'.count('^za')
puts

# Index
p 'My hello world string'.index('M')
p 'My hello world string'.index('e')
p 'My hello world string'.index('world')
p 'My hello world string'.index('a')
p 'My hello world string'.index('hello', 3)
p 'My hello world string'.index('hello', 10)
puts

# rIndex - Same as index but counting from the last position of the string
p 'My hello world string'.rindex('M')
p 'My hello world string'.rindex('e')
p 'My hello world string'.rindex('world')
p 'My hello world string'.rindex('a')
p 'My hello world string'.rindex('hello', 3)
p 'My hello world string'.rindex('hello', 2)
puts

# Insert
typo = 'NewYo'
typo.insert(3, ' ')
typo.insert(typo.size, 'rk')
p typo
puts

# Squeeze
repeated = 'Striiiiiing has    repeated characters'
p repeated.squeeze(' ')
p repeated.squeeze('i')
repeated.squeeze! ' i'
p repeated
puts

# Clear
clear_string = 'string'
p clear_string
clear_string.clear
p clear_string
puts

# Delete
p '1String'.delete('1')
p '1String'.delete('A')
puts

# Starts and ends with
phrase = 'Ruby programming language is amazing'
p phrase.start_with?('Ruby')
p phrase.start_with?('The')
p phrase.end_with?('amazing')
p phrase.end_with?('awesome')
