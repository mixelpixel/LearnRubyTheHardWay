# http://learnrubythehardway.org/book/ex17.html
# Exercise 17: More Files

# prior to running this script, enter this into the command prompt:
# $ echo "This is a test file." > ex17_test.txt
# Feel free to verify the text file creation like so:
# $ cat ex17_test.txt
# And invoke the script with two parameters/variables/arguments:
# $ ruby ex17.rb ex17_test.txt ex17_new_file.txt
# Note - I am using notepad++ and the resulting file has an odd
# character at the end that just looks like a square. Not sure what
# exactly is going on there...?


#one line version:
from_file, to_file = ARGV; in_file = open(from_file); indata = in_file.read; out_file = open(to_file, 'w'); out_file.write(indata); out_file.close; in_file.close

# # # puts "Copying from #{from_file} to #{to_file}."

# # # # we could do these two on one line, how? SEMI-COLON
# # # in_file = open(from_file)
# # # indata = in_file.read
# # # # NOPE: in_file, indata = open(from_file), in_file.read
# # # # YEP: in_file = open(from_file); indata = in_file.read


# # # puts "The input file is #{indata.length} bytes long."

# # # puts "Does the output file exist? #{File.exist?(to_file)}"
# # # puts "Ready, hit RETURN to continue, CTRL-C to abort."
# # # $stdin.gets

# # # out_file = open(to_file, 'w')
# # # out_file.write(indata)

# # # puts "Alright, all done."
# # # out_file.close
# # # in_file.close


