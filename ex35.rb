# http://learnrubythehardway.org/book/ex35.html
# Exercise 35: Branches and Functions

# for a flow chart of this program:
# http://www.mkltesthead.com/2011/12/exercise-35-branches-and-functions.html

# # Line 7 "bug" debugging.
# choice = "50"
# if choice.include?("0") || choice.include?("1")
  # puts "what?"
# end
# # Hmmmm?
# # a-ha, thank you internets
# # http://stackoverflow.com/questions/29308499/bug-in-if-statement-parameters-learn-ruby-the-hard-way
# # Ruby "pattern match" operator =~
# # http://stackoverflow.com/questions/3025838/what-is-the-operator-in-ruby


# # nice way to simplify
def prompt
  print "> "
  input = $stdin.gets.chomp
  return input
end


def gold_room
  puts "This room is full of gold. how much do you take?"
  
  # print "> "
  # choice = $stdin.gets.chomp
  # Now I've taken the print and $stdin and put them in the prompt function
  # I assign the return value from prompt to the variable choice
  choice = prompt#; choice = $stdin.gets.chomp # NOTE the use of the semi-colon
  
  #this line has a bug, so fix it (bug = does not recognize 0-9, only 1 & 0)
  # if choice.include?("0") || choice.include?("1")
  # Regular expressions: \d means any Digit, + means one or more times and =~ is a pattern match operator
  if choice =~ /\d+/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    # http://stackoverflow.com/questions/15543287/why-do-we-pass-0-as-a-parameter-to-exit
    # exit(0) # research other exit parameters
    # Process.exit(0) # this is another way
    # abort("\"You're an abortion\"\" -John McEnroe") # abort with a message
    # abort # no msg # http://stackoverflow.com/questions/23340609/difference-between-exit-and-abort
    # exit! # http://stackoverflow.com/questions/5295394/what-is-the-difference-between-exit-and-exit-in-ruby
    exit
  else
    dead("You greedy bastard!")
  end
end


def bear_room
  puts """
There is a bear here.
The bear has a bunch of honey.
The fat bear is in front of another door.
How are you going to move the bear?
"""
  bear_moved = false
  
  while true
    # print "> "
    # choice = $stdin.gets.chomp
    choice = prompt#; choice = $stdin.gets.chomp
    
    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means"
    end
  end
end


def cthulhu_room
  puts """
Here you see the great evil Cthulhu.
He, it, whatever stares at you and you go insane.
Do you flee for your life or eat your head?
"""

  # print "> "
  # choice = $stdin.gets.chomp
  choice = prompt#; choice = $stdin.gets.chomp
  
  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well, that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts """
You are in a dark room.
There is a door to your right and left.
Which one do you take?
"""

  # print "> "
  # choice = $stdin.gets.chomp
  choice = prompt#; choice = $stdin.gets.chomp
  
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  elsif choice == "teleport"
    gold_room
  else
    dead("You stumble around the room until you starve.")
  end
end


start


