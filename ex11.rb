# http://learnrubythehardway.org/book/ex11.html
# I use print instead of puts to print the string
# without a \n (newline) printed and the prompt
# stops right where the user should enter the answer.

# note the spaces after the questions:

print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."