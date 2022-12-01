#For loop
cities = ['New York', 'Dallas', 'Miami', 'San Francisco']
loop_number = 0

for i in 1..10
  puts "count: #{i}"
end
puts

for i in 1..10
  if i % 2 == 0
    puts "count: #{i}"
  end
end
puts

for city in cities
  puts "City: #{city}"
end
puts

cities.each { |site| puts "City: #{site}" }

cities.each do |city| 
  puts "City: #{city}"
end
puts

# While loop
while loop_number < 10
  puts "Current number: #{loop_number}"
  loop_number += 1
end
puts

status = false

while !status
  puts 'Please enter your username'
  username = gets.chomp.strip
  puts 'Please enter your password'
  password = gets.chomp
  status = username.empty? || password.empty? ? false : true
end

# Until loop
logged = false

until logged
  puts 'Please enter your username'
  username = gets.chomp.strip
  puts 'Please enter your password'
  password = gets.chomp
  logged = username.empty? || password.empty? ? false : true
end

# N-Times
10.times {
  puts 'statement'
}
puts

10.times { |count| puts "Count: #{count}" }
puts

10.times do
  puts 'statement_one'
  puts 'statement_two'
end
puts

10.times do |count|
  print 'Count: '
  print "#{count} \n"
end
puts

10.times { |count| puts "#{count + 1}th mutiple of 3: #{(count + 1) * 3}" }
puts

# Upto and downto
10.downto(1) { |i| puts "countdown: #{i}" }
puts

10.downto(1) do |i|
  print 'countdown: '
  print "#{i} \n"
end
puts

1.upto(10) { |i| puts "countdown: #{i}" }
puts

1.upto(10) do |i|
  print 'countdown: '
  print "#{i} \n"
end
puts

# Step loop
0.step(100, 5) { |i| puts "countdown: #{i}" }
puts

100.step(0, -5) { |i| puts "countdown: #{i}" }
puts

0.step(100, 5) do |i|
  print 'countdown: '
  print "#{i} \n"
end
puts
