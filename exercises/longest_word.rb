# frozen_string_literal: true

def longest_word(sentence)
  longest_word = ''
  sentence.split.each do |word|
    longest_word = word if word.length >= longest_word.length
  end
  longest_word
end

p longest_word 'Bobby loves big scary kangaroos'
p longest_word 'Ruby is my favorite language'
