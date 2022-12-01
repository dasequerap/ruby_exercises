# frozen_string_literal: true

def value_count(hash, value)
  count = 0
  hash.each { |key_set| count += 1 if key_set[1] == value }
  count
end

hash = { a: 5, b: 2, c: 3, d: 5 }

p value_count(hash, 2)
p value_count(hash, 3)
p value_count(hash, 5)

