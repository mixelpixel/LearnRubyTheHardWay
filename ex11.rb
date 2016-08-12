# http://learnrubythehardway.org/book/ex11.html
# Exercise 11: Asking Questions

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

# just to demonstrate the differences between puts and print:

puts "How old are you? "
age = gets.chomp
puts "How tall are you? "
height = gets.chomp
puts "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

# http://ruby-doc.org/docs/Tutorial/part_02/user_input.html

# http://stackoverflow.com/questions/23193813/how-does-gets-and-gets-chomp-in-ruby-work


