# http://learnrubythehardway.org/book/ex40.html
# Exercise 40: Modules, Classes, and Objects

# Modules Are Like Hashes

mystuff = {'apple' => "I AM APPLES!"}
puts mystuff['apple'] # get apple from dict/hash

# "get X from Y"
# see ex40_mystuff.rb
# "importing" modules is done with "require"

require "./ex40_mystuff.rb" #CALLS MODULE FROM THE SAME DIRECTORY
MyStuff.apple()             # get apple from the module
puts MyStuff::TANGERINE     # THIS IS A NEW OPERATOR THE DOUBLE COLON ::
#                           # it just gets a variable from the module

=begin
NOTE: In the case of the hash, the key is a string
and the syntax is [key]. In the case of the module,
the key is an identifier, and the syntax is .key
=end
 
# Classes Are Like Modules

class My_Stuff
    def initialize()
        @tangerine = "And now a thousand years in between"
    end
    
    attr_reader :tangerine
    
    def apples()
        puts "I AM CLASSY APPLES!"
    end
    
end


thing = My_Stuff.new()
thing.apples()
puts thing.tangerine

# $ is a global variable assignment

# Getting Things from Things

# dict/hash style
mystuff['apples']

# module style
MyStuff.apple()
puts MyStuff::TANGERINE

# class style
thing = My_Stuff.new()
thing.apples()
puts thing.tangerine

# A First Class Example

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

happy_bday = Song.new(["Happy birthday to you",
                       "I don't want to get sued",
                       "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
                            "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()


