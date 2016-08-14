# http://learnrubythehardway.org/book/ex32.html
# Exercise 32: Loops and Arrays

the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
  puts "This is count #{number}"
end

# same as above, but in a more Ruby style
# this and the next one are the preferred
# way Ruby for-loops are written
# http://graysoftinc.com/early-steps/the-evils-of-the-for-loop
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too
# note this is yet another style, exactly like above
# but a different syntax (way to write it).
change.each {|i| puts "I got #{i}" }

# we can aslo build lists, first start with an empty one:
elements = []

# then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  # pushes the i variable on the *end* of the list
  # elements.push(i) # THIS SYNTAX IS A METHOD
  elements << i # THIS, AN OPERATOR, otherwise, THESE TWO STATEMENTS ARE IDENTICAL
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }
puts elements

# # ...
# elements = []

# # then use the range operator to do 0 to 5 counts
# (0...5).each do |i|
  # puts "adding #{i} to the list."
  # # pushes the i variable on the *end* of the list
  # elements.push(i)
# end

# # now we can print them out too
# elements.each {|i| puts "Element was: #{i}" }
# puts elements

inclusive = (0..3).to_a
exclusive = (0...3).to_a
puts inclusive
puts exclusive

# HEY _ I JUST FOUND OUT THAT p IS LIKE puts AND print
# http://www.garethrees.co.uk/2013/05/04/p-vs-puts-vs-print-in-ruby/

i = "WHAT THE ACTUAL FUCK???"

p i