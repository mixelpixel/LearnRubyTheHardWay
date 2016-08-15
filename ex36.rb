# http://learnrubythehardway.org/book/ex36.html
# Exercise 36: Designing and Debugging

=begin
Good rules for if-statements (each-do, abc.each {|x|... })
1) Every if clause must have an else. If this else should never run because it doesn't
make sense, then use a DIE function in the else that prints out an error messgae and dies.
This will find errors.
2) Don't nest if-statements more than two deep
3) The boolean conditions should be simple. If they are complex, then move their
calculations to variables earlier in the function
=end

# To Do: Homework, make a choose your own adventure