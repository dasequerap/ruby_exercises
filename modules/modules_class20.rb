# modules example

module Animal

  ANIMAL_CONSTANT = 'This is an animal constant'.freeze

  def self.animal_constant
    ANIMAL_CONSTANT
  end

  # Example of a class in a module
  class DogModule
    def bark
      puts 'Barking!'
    end

    def sleeping
      puts 'Sleeping'
    end

    def eating
      puts "I'm eating"
    end
  end
end

my_dog = Animal::DogModule.new
my_dog.bark
my_dog.sleeping
my_dog.eating
puts '--------------------------------'

# Module inheritance example
module A
  def a1
    puts 'Sample A1'
  end
end

module B
  def b1
    puts 'Sample B1'
  end
end

module C
  def c1
    puts 'Sample C1'
  end
end

module D
  def d1
    puts 'Sample D1'
  end
end

module FinalSample
  # Class sample
  class Sample
    include A
    include B
    include C
    include D

    def sample
      puts 'Sample S1'
    end
  end
end

my_sample = FinalSample::Sample.new
my_sample.a1
my_sample.b1
my_sample.c1
my_sample.d1
my_sample.sample
puts

# Retrieving constants
p Animal::ANIMAL_CONSTANT
p Animal.animal_constant
