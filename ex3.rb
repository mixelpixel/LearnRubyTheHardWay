# http://learnrubythehardway.org/book/ex3.html
# Exercise 3: Numbers and Math

#Floating point re-write

# This line of code prints the text in between the quotation marks
puts "I will now count my chickens:"

# This line prints the text "Hens " and then calculates
# the arithmetic following a P.E.M.D.A.S. order of operations
# and prints the result of the calculation, i.e. thirty divided
# by six is five, then twenty-five plus five equals thirty
puts "Hens #{25.0 + 30.0 / 6.0}"
# P.E.M.D.A.S. arithmetic: twenty-five times three is seventy five, then
# seventy-five modulo four (the remainder from dividing seventy-five by four
# is three - four goes into seventy-two evenly -er, with a remainder of zero and
# seventy-five minus seventy-two is three, so... one-hundred minus three is ninety-seven
puts "Roosters #{100.0 - 25.0 * 3.0 % 4.0}"

# simple printing statement-- er, "putsing"... "putting"?
puts "Now I will count the eggs:"

# P.E.M.D.A.S. arithmetic with an example of floor division (rounding decimals or
# fractions to zero. Following P.E.M.D.A.S. we find that four modulo two gives a
# remainder of zero and one divided by four results in a decimal which is also
# rounded to zero, so those operators and operands are factored out and the equation
# is reduced to three plus two plus one minus five plus six, or, seven. 
puts 3.0 + 2.0 + 1.0 - 5.0 + 4.0 % 2.0 - 1.0 / 4.0 + 6.0

#simple puts statement
puts "Is it true that 3 + 2 < 5 -7?"

# puts statement returning a boolean value given the comparative operator for
# the two arithmetic calculations
puts 3 + 2 < 5 - 7

# puts with an inline calculation of arithmetic
puts "What is 3 + 2? #{3.0 + 2.0}"
# puts with an in-line arithmetic calculation
puts "What is 5 - 7? #{5.0 - 7.0}"

# simple put statement
puts "Oh, that's why it's false."

#simple put statement
puts "How about some more."

# put statements with inline boolean evaluation
puts "Is it greater? #{5 > -2}"
puts "Is it greater or equal? #{5 >= -2}"
puts "Is it less or equal? #{5 <= -2}"

# explicit modulus
puts "percent or modulo operator?"
puts " 5 % 2 = #{5.0 % 2.0}"

# explicit floor division
puts "floor division?"
puts " 1 / 4 = #{1.0 / 4.0}"

# so long as one operand is floating point, the operator returns floating point
puts 1 / 4.0
puts 5.0 % 2


