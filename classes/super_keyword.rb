# frozen_string_literal: true

# Super keyword example
class Employee
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

# Class manager
class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    'Who is the boss. I am the boss!'
  end

  def introduce
    "#{super}. I'm also a manager!"
  end
end

# Class worker
class Worker < Employee
  def clock_in_time(time)
    "Starting the shift at #{time}"
  end

  def introduce
    "I'm working!. I'm working!"
  end
end

sally = Manager.new('Sally', 42, 'Vice-president Manager')
rick = Employee.new('Rick', 45)
p sally.name
p sally.rank
p sally.age
p sally.introduce
puts

p rick.name
p rick.age
p rick.introduce
puts
