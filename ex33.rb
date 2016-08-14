# http://learnrubythehardway.org/book/ex33.html
# Exercise 33: While Loops

i = 0
numbers = [] # EMPTY

while i < 6
  puts "At the top is #{i}"
  numbers.push(i) # ADDS TO THE END OF THE ARRAY
  
  i += 1
  # puts "Numbers now: ", numbers # puts prints each [array]s element
  p numbers # p prints the whole [array]
  puts "At the bottom i is #{i}"
  puts "\n"
end

puts "The numbers:"

# remember you can write this 2 other ways?
numbers.each {|num| puts num }

# The for-loop way
puts "for-loop:"
for num in numbers
  p num
  # p numbers
end

# The each iterator with "do"
puts "each-do:"
numbers.each do |num|
  p num
  # p numbers
end
