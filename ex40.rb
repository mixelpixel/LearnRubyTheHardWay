# http://learnrubythehardway.org/book/ex40.html
# Exercise 40: Modules, Classes, and Objects

# Modules Are Like Hashes

mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple'] # get apple from dict/hash

# "get X from Y"
# see ex40_mystuff.rb
# "importing" modules is done with "require"

require "./ex40_mystuff.rb"
MyStuff.apple() # get apple from the module
puts MyStuff::TANGERINE # THIS IS A NEW OPERATOR THE DOUBLE COLON ::
#                       # it just gets a variable from the module

=begin
NOTE: In the case of the hash, the key is a string
and the syntax is [key]. In the case of the module,
the key is an identifier, and the syntax is .key
=end
 
# Classes Are Like Modules