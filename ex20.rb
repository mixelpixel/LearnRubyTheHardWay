# http://learnrubythehardway.org/book/ex20.html
# Exercise 20: Functions and Files

# Assigns the argument vector entered when the script is invoked
input_file = ARGV.first

# define a function "print_all" which takes an object as a parameter
# In this case the object will be a file
def print_all(f)
  # put strings the contents of the file
  puts f.read
# end of function
end

# define a function "rewind" that takes an object as a parameter
def rewind(f)
  # the seek method (of class IO) moves the file pointer to a given
  # integer distance, e.g. (0) is used here. The file pointer indicates
  # the current location in the file and zero corresponds to the beginning
  f.seek(0)
# end of function
end

# defin a function "end_of_line" which takes
# an integer (line_count) and a file object (f) as parameters
def print_a_line(line_count, f)
  # puts (prints) a string of line_count number (the integer
  # is printed as a string) and then prints the line of the file.
  # the chomp method removes the new line character from
  # the end of the line being printed
  # To be honest, I'm not sure how the file line number relates 
  # to the seek position... but that's what it appears to do.
  puts "#{line_count}, #{f.gets.chomp}"
# end of funtion
end

# opens the input file passed to ARGV in read mode and assigns it
# as a file object to a variable named "current_file"
current_file = open(input_file)

# put string NOTE: not sure why there is a newline at the end \n
puts "First let's print the whole file:\n"

# this line invokes the print_all method defined above and
# passes to it the current_file object as a parameter so that
# the contents of the file are put to the screen as a string
print_all(current_file)

# put string
puts "Now let's rewind, kind of like a tape."

# calls the rewind function with the current_line variable as a parameter
# the file pointer is now at the beginning of the file
rewind(current_file)

# put string
puts "Let's print three lines:"

# assigns the integer 1 to a variable named current_line
current_line = 1
# call the print_a_line function and passes to it the parameters
# current_line (1) and current_file (the opened file input from ARGV)
print_a_line(current_line, current_file)

# assigns an addition operation to the integer assigned to current_file
# current_line = current_line + 1
# this syntax achieves the same operation as the verbose syntax above:
current_file += 1
# invokes the print_a_line function with the parameters
# current_line and current_file
# this will print the second line of current_file
print_a_line(current_line, current_file)

# current_line = current_line + 1
current_file += 1
# prints line 3 of current_file
print_a_line(current_line, current_file)

