# http://learnrubythehardway.org/book/ex40.html
# Exercise 40: Modules, Classes, and Objects
# Modules Are Like Hashes

=begin

"Keep this idea of "get X from Y" in your head,
and now think about modules. You've made a few so far,
and you should know they are:

1.) A Ruby file with some functions or variables in it
    inside a "module ... end" block.
2.) You import that file.
3.) And you can access the functions or variables in
    that module with the . (dot) operator."
    
=end

module MyStuff
    def MyStuff.apple()
        puts "I AM APPLES!"
    end
end

# does it need to be indented four spaces
# or should I keep to the two space indentation?