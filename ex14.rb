# http://learnrubythehardway.org/book/ex14.html

# You will also notice that we used ARGV.first in this script to get
# the first command line argument. In the previous script I used
# first, second, third = ARGV to get three arguments, but that won't
# work for just one argument. The explanation as to why is complex at
# this point in your learning, so just remember that you use ARGV.first
# to get only one argument, and use the other form when you want more
# than one command line argument. Later in the book you'll understand
# why when you learn about Arrays.

user_name = ARGV.first # gets the first argument
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice
"""