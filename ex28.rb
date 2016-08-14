# learnrubythehardway.org/book/ex28.html
# Exercise 28: Boolean Practice

# && (and)
# || (or)
# ! (not)
# != (not equal)
# == (equal) "generic equality" or "value equality"
# >= (greater-than-equal)
# <= (less-than-equal)
# true
# false
# === (equals equals equals) "case equality"
# see: http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and
# and: http://ruby-doc.org/core-2.3.1/Object.html#method-i-eql-3F
# equal? "identity comparison"
# eql? "Hash equality"
# is_a?
# IS THERE A !== ? Apparently not - see end of file

# Practice entering the comparisons in brackets in the Interactive RuBy shell
# with irb:

puts (true && true) == true
puts (false && true) == false
puts (1 == 1 && 2 == 1) == false
puts ("test" == "test") == true
puts (1 == 1 || 2 != 1) == true
puts (true && 1 == 1) == true 
puts (false && 0 != 0) == false
puts (true || 1 == 1) == true
puts ("test" == "testing") == false
puts (1 != 0 && 2 == 1) == false # breezed through formatting brackets
puts ("test" != "testing") == true # hah, didn't notice the !
puts ("test" == 1) == false
puts (!(true && false)) == true
puts (!(1 == 1 && 0 != 1)) == false
puts (!(10 == 1 || 1000 == 1000)) == false
puts (!(1 != 10 || 3 == 4)) == false
puts (!("testing" == "testing" && "Zed" == "Cool Guy")) == true
puts (1 == 1 && (!("testing" == 1 || 1 == 0))) == true
puts ("chunky" == "bacon" && (!(3 == 4 || 3 == 3))) == false
puts (3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))) == false

class Object
  def all_equals(o)
    ops = [:==, :===, :eql?, :equal? ] # I put a space before the closing bracket so Notepad would grok the end of the class
    Hash[ops.map(&:to_s).zip(ops.map {|s| send(s, o) })]
  end
end

puts "a".all_equals "a" # => {"=="=>true, "==="=>true, "eql?"=>true, "equal?"=>false}

=begin
=== case equality
== generic equality
both works similar but "===" does case statements
here's the difference:
=end

puts "test" == "test"  #=> true
puts "test" === "test" #=> true

puts String === "test"   #=> true
puts String == "test"  #=> false
# puts String !== "test"
# puts String not === "test"
# Nope

