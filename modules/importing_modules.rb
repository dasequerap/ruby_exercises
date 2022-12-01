# frozen_string_literal: true

# Import modules example
require './modules/modules_class20'
require_relative 'modules_class20'

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
