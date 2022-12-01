# frozen_string_literal: true

# Regex

string_one = 'Automobile'
string_two = 'Automechanic'
string_three = 'Mechaniauto'
string_four = 'Auto132456mechaninc'
string_five = 'Autosdfggmobile'
string_six = 'automobile'
string_seven = 'auto'
string_eight = 'mechanic'

def reg_match_with_word(word_one, word_two)
  if word_one =~ /#{word_two}/
    puts "String #{word_one} matches with #{word_two}"
  else
    puts 'Not match!'
  end
end

def reg_match_beginning_word(word_one, word_two)
  if word_one =~ /^#{word_two}/
    puts "String #{word_one} starts with #{word_two}"
  else
    puts 'No match!'
  end
end

def reg_match_end_of_word(word_one, word_two)
  if word_one =~ /#{word_two}$/
    puts "String #{word_one} ends with #{word_two}"
  else
    puts 'No match!'
  end
end

def reg_match_starts_and_ends_with_words(word_one, word_two, word_three)
  if word_one =~ /^#{word_two}.*#{word_three}$/
    puts "String #{word_one} starts with #{word_two} and ends with #{word_three}"
  else
    puts 'No match!'
  end
end

reg_match_with_word(string_one, string_two)
reg_match_with_word(string_one, string_six.capitalize)

reg_match_beginning_word(string_one.downcase, string_seven)
reg_match_beginning_word(string_two.downcase, string_seven)
reg_match_beginning_word(string_three.downcase, string_seven)

reg_match_end_of_word(string_one.downcase, string_seven)
reg_match_end_of_word(string_two.downcase, string_seven)
reg_match_end_of_word(string_three.downcase, string_seven)

reg_match_starts_and_ends_with_words(string_one.downcase, string_seven, string_eight)
reg_match_starts_and_ends_with_words(string_two.downcase, string_seven, string_eight)
reg_match_starts_and_ends_with_words(string_three.downcase, string_seven, string_eight)
puts

# Regular expression class
p //.class
puts

# .scan method
phrase = '1.Call now at 555-634-567-128 toll-free line or regex@mail.com.5'
p phrase.scan(/e/)
p phrase.scan(/e/).length
p phrase.scan(/re/)
p phrase.scan(/[re]/)
p phrase.scan(/[yz]/)
p phrase.scan(/[Cz]/)
p phrase.scan(/555/)
puts
p phrase.scan(/\d+/)
phrase.scan(/\d+/) { |digits| puts digits }
puts

# Wildcards
puts phrase.scan(/.al/)
puts phrase.scan(/.to/)
puts phrase.scan(/.xh/)
puts phrase.scan(/n.w/)
puts phrase.scan(/to.l.f.ee/)
puts phrase.scan(/\d+.\d+.\d+/)
puts phrase.scan(/\./)
p phrase.scan(/\D+/)
p phrase.scan(/\s+/).length
p phrase.scan(/\S+/)
# Anchors
p phrase.scan(/\A\d/)
p phrase.scan(/\z\d/)
p phrase.scan(/\d\z/)
# Exclude
p phrase.scan(/[^aeiouAEIOU\s\d]/)
puts

# Sub and gsub
p 'Word'.sub('o', 'a')
p 'an apple'.sub('a', '-')
p 'an apple'.gsub('a', '-')
p '(555)-555-564'.gsub('(', '').gsub(')', '')
p '(555)-555-564'.gsub(/[()]/, '').gsub(/-/, '.')
p '((((555)))))-555-564'.gsub(/[()]/, '').gsub(/-/, '.')
