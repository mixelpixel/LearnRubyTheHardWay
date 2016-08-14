# http://learnrubythehardway.org/book/ex35.html
# Exercise 35: Branches and Functions


# Line 7 "bug" debugging.
choice = "50"

if choice.include?("0") || choice.include?("1")
  puts "what?"
end

# Hmmmm?

# a-ha, thank you internets
# http://stackoverflow.com/questions/29308499/bug-in-if-statement-parameters-learn-ruby-the-hard-way


# nice way to simplify

def prompt
  print "> "
end