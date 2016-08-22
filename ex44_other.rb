# http://learnrubythehardway.org/book/ex44.html
# Exercise 44: Inheritance Versus Composition
# from irb, enter: require "./ex44_other.rb"

module OtherModule

  def override()
    puts "OTHER override()"
  end
  
  def implicit()
    puts "OTHER implicit()"
  end
  
  def OtherModule.altered()
    puts "OTHER altered()"
  end
end

class Child
  include OtherModule
  
  def override()
    puts "CHILD override()"
  end
  
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    OtherModule.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

# # Uncomment the following to run from the irb, or, just
# # enter these commands in the irb
# son = Child.new()

# son.implicit()
# son.override()
# son.altered()

# Ruby, OOP and "Mixins"?


