status = false

while !status
  puts 'Please enter your username'
  username = gets.chomp.strip
  puts 'Please enter your password'
  password = gets.chomp
  status = username.empty? || password.empty? ? false : true
end