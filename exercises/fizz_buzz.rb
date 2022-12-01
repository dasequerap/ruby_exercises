# Fizz buzz exercise
def fizz_buzz(number)
  number.times { |i|
    if (i % 15).zero?
      puts "#{i}: Fizz Buzz"
    elsif (i % 3).zero?
      puts "#{i}: Fizz"
    elsif (i % 5).zero?
      puts "#{i}: Buzz"
    end
  }
end

fizz_buzz(101)
