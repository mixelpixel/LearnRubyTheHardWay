# http://learnrubythehardway.org/book/ex16.html
# Exercise 16: Reading and Writing Files

# binds a variable to the filename passed in when the script is executed from the command line
filename = ARGV.first

# uses the file name
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

# awaits a return or ctrl-c, other than ctrl-c to end the process
# whatever you type in is irrelevant, if you hit enter it it will continue the script
$stdin.gets

puts "Opening the file..."
# this assigns to the variable 'target' an object of the file opened in 'w'rite mode
# note that this creates the file named in the variable filename and writes the file to disk
# in the working directory.
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
# the number is the max length in bytes?
# since this file is already 0KB, the truncate function is kinda unnecesary
target.truncate(0)

puts "Now I am going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# target.write(line1)
# target.write("\n")
# target.write(line2)
# target.write("\n")
# target.write(line3)
# target.write("\n")
target.write("#{line1}\n#{line2}\n#{line3}\n")
puts
puts "And finally, we close it."
target.close

puts
puts "Here we open it as read only."

# opening as read-only
read_me = open(filename)
puts "And on screen we display the string of text read from the file"
# using read
print read_me.read

puts "And we close that back up again"
read_me.close


