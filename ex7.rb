# http://learnrubythehardway.org/book/ex7.html

puts "Mary had a little lamb."

# note: In Ruby the " (double-quote) tell Ruby
# to replace variables it finds with #{}, but
# the ' (single-quote) tells Ruby to leave the
# string alone and ignore any variables inside it.
puts "Its fleece was white as #{'snow'}."
puts 'Its fleece was white as #{"snow"}.'


puts "And everywhere that Mary went."
puts "." * 10 # what'd that do?

end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# watch that print vs. puts on this line what's it do?
print end1 + end2 + end3 + end4 + end5 + end6
puts end7 + end8 + end9 + end10 + end11 + end12

# puts vs. print. The puts (short for "put string")
# and print commands are both used to display the results
# of evaluating Ruby code. The primary difference between
# them is that puts adds a newline after executing, and
# print does not.