# http://learnrubythehardway.org/book/ex27.html
# Exercise 27: Memorizing Logic

# && (and)
# || (or)
# ! (not)
# != (not equal)
# == (equal)
# >= (greater-than-equal)
# <+ (less-than-equal)
# true
# false

# NOT (!)
puts !false == true
puts !true == false

# OR (||)
puts true || false == true
puts true || true == true
puts false || true == true
puts false || false == false

# AND (&&)
puts true && false == false
puts true && true == true
puts "huh?"
# puts false && true == false
# puts false && false == false
puts (false && true) == false
puts (false && false) == false
puts "ummm...?"
puts (false and true) == false
puts (false and false) == false
puts "weird"

# NOT OR (!||) and (not ||)
puts not(true || false) == false
puts !(true || false) == false # ! and not are the same
puts not(true || true) == false
puts not(false || true) == false
puts not(false || false) == true

# NOT AND (!&&) and (not &&)
puts !(true && false) == true
puts !(true && true) == false
puts !(false && true) == true
puts !(false && false) == true

# NOT EQUAL (!=)
puts (1 != 0) == true
puts (1 != 1) == false
puts (0 != 1) == true
puts (0 != 0) == false

# EQUAL (==) equivalency
puts (1 == 0) == false
puts (1 == 1) == true
puts (0 == 1) == false
puts (0 == 0) == true


