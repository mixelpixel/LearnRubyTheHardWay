# http://learnrubythehardway.org/book/ex34.html
# Exercise 34: Accessing Elements of Arrays

animals = ['bear', 'tiger', 'penguin', 'zebra']
a_bear = animals[0] # CARDINAL numbering: zero, one, two, three ...

=begin
The INDICES start at ZERO in an array
ORDINAL numbers start in order from first, second and so on... no zeroeth
=end

p a_bear # ==> "bear"
puts a_bear # ==> bear
print a_bear # ==> bear
puts

animals = ['bear', 'ruby', 'peacock', 'kangaroo', 'whale', 'platypus']

puts "The animal at 1 is ruby: #{animals[1]}."
puts "The third (3rd) animal is peacock: #{animals[2]}."
puts "The first (1st) animal is bear: #{animals[0]}."
puts "The animal at 3 is kangaroo: #{animals[3]}."
puts "The fifth (5th) animal is whale: #{animals[4]}."
puts "The animal at 2 is peacock: #{animals[2]}."
puts "The sixth (6th) animal is platypus: #{animals[5]}."
puts "The animal at 4 is whale: #{animals[4]}."

