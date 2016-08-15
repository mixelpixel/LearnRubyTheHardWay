# http://learnrubythehardway.org/book/ex38.html
# Exercise 38: Doing Things to Arrays

ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts ten_things
p ten_things + ": this is how a 'p' print handles strings"
puts "Is ten_things a String? "
puts ten_things.is_a?(String)

puts "Wait there are not 10 things in that list. Let's fix that."
puts "Hey - that's not even a list, it's a string!"

stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbees", "Corn", "Banana", "Girl", "Boy"]

# using math to make sure there's 10 items
puts stuff.length

while stuff.length != 10
  next_one = more_stuff.pop
  puts "Adding: #{next_one}"
  stuff.push(next_one)
  puts "There are #{stuff.length} items now."
end

puts "There we go: #{stuff}"

puts "Let's do some things with stuff."

puts stuff[1]
puts stuff[-1] #whoa! fancy
puts stuff.pop()
puts stuff.join(' ')
puts stuff[3..5].join('#')

