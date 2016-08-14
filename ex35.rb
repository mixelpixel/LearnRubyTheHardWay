# http://learnrubythehardway.org/book/ex35.html
# Exercise 35: Branches and Functions


# # Line 7 "bug" debugging.
# choice = "50"

# if choice.include?("0") || choice.include?("1")
  # puts "what?"
# end

# # Hmmmm?

# # a-ha, thank you internets
# # http://stackoverflow.com/questions/29308499/bug-in-if-statement-parameters-learn-ruby-the-hard-way


# # nice way to simplify

# def prompt
  # print "> "
# end

def gold_room
  puts "This room is full of gold. how much do you take?"
  
  print "> "
  choice = $stdin.gets.chomp
  
  #this line has a bug, so fix it (bug = does not recognize 0-9, only 1 & 0)
  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0) # research other exit parameters
  else
    dead("You greedy bastard!")
  end
end

