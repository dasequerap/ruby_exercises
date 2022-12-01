day = 'Wednesday'

case day.downcase
when 'saturday', 'sunday'
  puts 'holiday'
else
  puts 'weekday'
end
