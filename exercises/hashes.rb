# Get all keys from "celebrity_hash"
celebrity_hash = { 'Beyonce' => 252424, 'Michael Jackson' => 4243433, 'Sam Smith' => 52134434, 'Taylor Swift' => 7534343, 'Tommy Smith' => 523232 }

for key in celebrity_hash.keys
  puts key
end

puts '-----------------------------------'

for value in  celebrity_hash.values
  puts value
end

puts '-----------------------------------'

celebrity_hash.each { |celebrity| puts celebrity }

puts '-----------------------------------'

celebrity_hash.each { |key, value| puts "#{key} => #{value}" }
