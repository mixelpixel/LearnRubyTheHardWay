# http://learnrubythehardway.org/book/ex15.html
# Exercise 15: Reading Files
# NOTE this script is to be run in conjunction with the ex15_sample.txt file
# as well and the command from the shell is as follows $ ex15.rb ex15_sample.txt

# assign a variable to the ARGument Vector entered with command line which runs the script
# note: this script will only read in a file in the same directory as the script... to look in to
# how to read in any script/any directory...
filename = ARGV.first

# assigns a variable to opening the file named in the ARGumentVector
txt = open(filename)

# puts a string of introduction for the ARGumentVector using the variable it was assigned to
puts "Here's your file #{filename}:"
# printing (no new line at end) the txt variable which opened the file named in the ARGument Vector
# by using the .read function
print txt.read

# HOW TO CLOSE A FILE?
# txt = close(filename)
# close(txt)
# close(filename)
txt.close


print "Type the filename again: "
# gets the filename an alternative way from within the script
# instead of in the command line launching the script
# using $stdin since it is in the same script as an ARGV command
# and chomping at the bit ;)
file_again = $stdin.gets.chomp

# using the open function to identify the file to be opened
txt_again = open(file_again)

# printing the file to be opened and reading it in to the print.
print txt_again.read

# IMPORTANT - OPEN FILE, USE FILE, CLOSE FILE
txt_again.close

# In irb:
# PS C:\Users\patrick\stuff\Ruby> irb
# irb(main):001:0> txt = File.open("ex15_sample.txt")
# => #<File:ex15_sample.txt>
# irb(main):002:0> puts txt.read
# This is stuff I typed into a file.
# It is really cool stuff.
# Lots and lots of fun to have in here.

# => nil
# irb(main):003:0> txt
# => #<File:ex15_sample.txt>
# irb(main):004:0> txt.close
# => nil
# irb(main):005:0> txt
# => #<File:ex15_sample.txt (closed)>
# irb(main):006:0>