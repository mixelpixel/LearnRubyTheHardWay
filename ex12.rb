# http://learnrubythehardway.org/book/ex12.html
# Exercise 12: Prompting People for Numbers

print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

# now using to_f for a floating point number

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller decimal is #{smaller}."

# calculate 15% tip
print "Give me a total for your dinner bill: "
bill = gets.chomp.to_i
tip = bill * 0.15

puts "A tip of #{tip.round(2)} would be nice"


