# http://learnrubythehardway.org/book/ex26.html
# Exercise 26: Congratulations, Take a Test!
# Fix this code: http://learnrubythehardway.org/book/exercise26.txt

# Second thing I noticed, the module name was Ex2, so I made it Ex25
module Ex25

  # This function will break up words for us.
  def Ex25.break_words(stuff) # brak > break; added an end parenteheses here
    words = stuff.split(' ')
    return words # returns word's'
  end

  # Sorts the words.
  def Ex25.sort_words(words) # missing underscore
    return words.sort
  end

  # Prints the first word after popping it off.
  def Ex25.print_first_word(words)  #THIRD thing I noticed was that def was mis=spelled df
    word = words.pop(1) # .pop(1) or shift?
    puts word # wor >> word
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(words) # Ex25:print_ >> Ex25.print_
    word = words.pop
    puts word # put >> puts
  end

  # Takes in a full sentence and returns the sorted words.
  # I put a space in between the octothorpe and the first word of the above comment
  def Ex25.sort_sentence(sentence)
    words = Ex25.break_words(sentence)
    return Ex25.sort_words(words)
  end  # FOURTH end mis-spelled ed

  # Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence) # added end parenthetical
    words = Ex25.break_words(sentence) # sentenc >> sentence
    Ex25.print_first_word(words) # ...first_wrd >> ...first_word & (word) >> (words)
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words) # fist >> first
    Ex25.print_last_word(words)
  end

end
# FIRST THING I NOTICED: THERE"S NO 'end' to this module.


# NOT SURE WHY THIS MODULE EXTENDED PAST THE LAST end... but going through it all, it now ends with the last end. Maybe it was the Ex25: ?
# Ah, no, it was the open parentheses on line 39


puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END
# changed the ending from >>ENDED to END
# apparently there needs to be nothing other than a return/new line after the final heredoc identifier.

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6 # missing the + operator
puts "This should be five: #{five}" # missing close curly brace

def secret_formula(started)
  jelly_beans = started * 500 # bens >> beans
  jars = jelly_beans / 1000
  crates = jars / 100 # crate >> crates
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point) # missing comma

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates." # missing closing curly brace

start_point = start_point / 10

sentence = "All good things come to those who wait."
words = Ex25.break_words(sentence)
sorted_words = Ex25.sort_words(words)
Ex25.print_first_word(words) # wrds >> words
Ex25.print_last_word (words) # opening parenthetical
Ex25.print_first_word(sorted_words) #sort >> sorted
Ex25.print_last_word(sorted_words)
sorted_words = Ex25.sort_sentence(sentence) # _sentenc >> _sentence
Ex25.print_first_and_last(sentence)
Ex25:print_first_and_last_sorted(sentence)


