# http://learnrubythehardway.org/book/ex33.html
# Exercise 33: While Loops

i = 0
numbers = []

while i < 6
  puts "At the top is #{i}"
  numbers.push(i)
  
  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num }

