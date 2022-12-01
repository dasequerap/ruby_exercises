age = 18

puts age
puts age.class

# Gets the specific integer data type
small_num = 5
p small_num.class

big_num = 1234567890123456789012345678901234567890
puts big_num.class
p big_num.class

big_num = 99999999999999999999999999999999999999999999999999999
puts big_num.class
p big_num.class

# Determine if the number is odd or even
puts age.even?
puts age.odd?

# Converts the integer to a string
puts age.to_s
puts age.to_s.class

#  Converts the integer to a floating point number
puts age.to_f
puts age.to_f.class

#  Converts the integer to a string
puts 4.567.to_s
puts 4.567.to_s.class

# Converts the floating point number to an integer
puts 4.56778.to_i
puts 4.56778.to_i.class

# Gets the absolute value of the integer
puts (-30).abs

# Rounds to the lowest integer or floating point number
puts 4.3.round
puts 4.567.round(2)

# Rounds to the next integer or floating point number
puts 4.3.ceil
puts 4.567.ceil(2)

# Increases the integer by one
puts 10.next
puts -1.next
