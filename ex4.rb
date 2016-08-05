# assigns (binds?) the integer 100 to the variable 'cars'
cars = 100
# assigns the floating point value 4.0 to a variable called 'space_in_a_car'
space_in_a_car = 4.0
drivers = 30
passengers = 90
# assigns 'cars_not_driven' to a calculation of previously defined variables
cars_not_driven = cars - drivers
# assigns a variable to a previously defined variable
cars_driven = drivers
# variable asssigned to a calculation of previously defined variables
# one an integer, the other, a floating point number
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."