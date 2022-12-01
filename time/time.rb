# frozen_string_literal: true

# Time object

require 'time'
today = Time.new
p today
p today.class
p Time.now

# Create new specific date
p Time.new(2016, 5, 8, 8, 1, 35)
puts

# Instance methods
p today.year
p today.month
p today.day
p today.hour
p today.min
p today.sec
p today.yday
p today.wday
puts

# Predicate/Boolean methods
# Is the day of the week?
p today.monday?
p today.tuesday?
p today.wednesday?
p today.thursday?
p today.friday?
p today.saturday?
p today.sunday?
puts

# Is daylight savings time
p today.dst?
puts

# Adding and subtract
p today
p today + 60
puts

# Comparators
birthday = Time.new(2022, 8, 13)
summer = Time.new(2022, 6, 21)
independence_day = Time.new(2022, 7, 4)
winter = Time.new(2022, 12, 21)

p birthday >= summer
p birthday == Time.now
p birthday.between?(independence_day, winter)
p birthday.between?(summer, winter)
puts

# Conversions
p today.to_s
p today.ctime
p today.to_a
puts

# Formatted date string
p today.strftime '%d %B of %Y'
puts

# Parsing and .strptime
p Time.parse('2022-11-09')
p Time.parse('03-04-2000')
p Time.strptime('03-04-2000', '%d-%m-%Y')
p Time.strptime('03-04-2000', '%m-%d-%Y')
