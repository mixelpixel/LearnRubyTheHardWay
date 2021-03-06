# http://learnrubythehardway.org/book/ex29.html
# Exercise 29: What If

people = 20
cats = 30
dogs = 15


if people < cats
  puts "Too many cats! The world is doomed!"
end

if people > cats
  puts "Not many cats! The world is saved!"
end

if people < dogs
  puts "The world is drooled on!"
end

if people > dogs
  puts "The world is dry!"
end


dogs += 5

if people >= dogs
  puts "People are greater than or equal to dogs."
end

if people <= dogs
  puts "People are less than or equal to dogs."
end


if people == dogs
  puts "People are dogs."
end

=begin
Conditionals. When the condition following the "if" is met
(i.e when the condition is true) then the indented code
following the conditional statement is executed
=end

def condition(x)
  if x
    puts "condition executed"
  end
end

condition(true)
condition(false)

def condition(x)
  if x
    puts "condition executed when true."
  else
    puts "condition executed when false."
  end
end

puts "#{condition(true)}"
puts "#{condition(false)}"

def condition(x)
  if #NOTE THE REMOVAL OF THE VARIABLE
    puts "condition executed when true."
  else
    puts "condition executed when false."
  end
end

puts "#{condition(true)}"
puts "#{condition(false)}"

