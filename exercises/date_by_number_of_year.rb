# frozen_string_literal: true

# Find date by year day number
# rubocop:disable Metrics/ClassLength
def find_date_by_day_number(number)
  start_date = Time.now
  total_days = lambda do |year|
    366 if (year % 4).zero?
    365
  end
  if number.is_a?(Numeric) && number < total_days.call(start_date.year)
    start_date += 60 * 60 * 24 until start_date.yday == number
  else
    raise 'Day number out of range. Number must be less or equal than 365 or 366 for leap years'
  end
  start_date
end

p find_date_by_day_number(150)
p find_date_by_day_number(313)
p find_date_by_day_number(366)
