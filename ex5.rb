my_name = 'Zed A. Shaw'
my_age = 35 # not a lie in 2009
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'
hair = my_hair.downcase

puts "Let's talk about #{my_name}."
puts "He's #{my_height} inches tall."
puts "He's #{my_weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes.downcase} eyes and #{hair} hair."
puts "His teeth are usually #{my_teeth.upcase} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age + my_height + my_weight}."

kilos = my_weight * 0.453592

# rounds kilos variable
puts "I weigh #{kilos.round(2)} kilograms."
# rounds the conversion decimal used in calculation
puts "I weigh #{my_weight * 0.453592.round(3)} kilograms."
# rounds the result of the calculation
puts "I weigh #{(my_weight * 0.453592).round(3)} kilograms."
puts
puts
puts "Were those blank lines?"

centimeters = my_height * 2.54

puts "I am #{centimeters.round(2)} centimeters tall."
puts "I am #{centimeters.round(1)} centimeters tall."
puts "I am #{centimeters.round(0)} centimeters tall."
# flooring
puts "I am #{centimeters.to_i} centimeters tall."
puts "I am #{(centimeters.to_i).to_f} centimeters tall."