# Respond_to? method example
num = 1000
string = 'Hello'

p num.respond_to?('next')
p num.respond_to?('strip')
p string.respond_to?('strip')
p string.respond_to?('odd?')
# With simbols
p string.respond_to?(:odd?)
p num.respond_to?(:next)
