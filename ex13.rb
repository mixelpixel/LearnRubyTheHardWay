# http://learnrubythehardway.org/book/ex13.html
# Exercise 13: Parameters, Unpacking, Variables

# note that this script must be run from the command line
# with the additional variables/arguments/parameters
# e.g. "$ ruby ex13.rb first 2nd 3rd" or "$ ruby ex13.rb stuff things" that and the like

first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

# from the command line run this script like so:
# ruby ex13.rb first second third
# less variables just get nothing, more seem to be ignored

print "Give me a number: "
number = $stdin.gets.chomp

bigger = number * 100
puts "A big string is #{bigger}."

print "Give me a number: "
number = $stdin.gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

# What's the difference between ARGV and gets.chomp?
# The difference has to do with where the user is required
# to give input. If they give your script inputs on the
# command line, then you use ARGV. If you want them to
# input using the keyboard while the script is running, then use gets.chomp.

# You should use $stdin.gets.chomp from now on since
# the action gets.chomp has problems with ARGV.

