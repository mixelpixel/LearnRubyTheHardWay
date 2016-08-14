# http://learnrubythehardway.org/book/ex30.html
# Exercise 30: Else and If
=begin
NOTE: from the Common Student Questions
Q: What happens if multiple elsif blocks are true?

A: Ruby starts and the top runs the first block that is true,
   so it will run only the first one.
=end


people = 30
cars = 40
trucks = 15

if cars > people
  puts "We should take the cars."
elsif cars < people
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

