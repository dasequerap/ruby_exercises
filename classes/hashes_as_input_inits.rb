# frozen_string_literal: true

# Hashes as initializing arguments example
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, details = {})
    defaults = { age: 18, occupation: 'Unemployed', hobby: 'none', birthplace: 'NY' }
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

details = { age: 29, occupation: 'Software engineer', hobby: 'Dog walking', birthplace: 'Alabama' }
candidate_one = Candidate.new('John')
candidate_two = Candidate.new('Larry', details)

p candidate_one.name
p candidate_one.age
p candidate_one.occupation
p candidate_one.hobby
p candidate_one.birthplace
puts

p candidate_two.name
p candidate_two.age
p candidate_two.occupation
p candidate_two.hobby
p candidate_two.birthplace
puts
