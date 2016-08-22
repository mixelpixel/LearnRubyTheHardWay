# http://learnrubythehardway.org/book/ex44.html
# Exercise 44: Inheritance Versus Composition


# Implicit Inheritance

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end


class Child < Parent
end

dad = Parent.new()
son = Child.new()

puts "IMPLICIT INHERITANCE"
dad.implicit()
son.implicit()
puts ""


# Override Explicitly

class Parent

  def override()
    puts "PARENT override()"
  end
end


class Child < Parent
  def override()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

puts "OVERRIDE EXPLICITLY"
dad.override()
son.override()
puts ""

# Alter Before or After

class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

puts "ALTER BEFORE OR AFTER"
dad.altered()
son.altered()
puts""


# All Three Combined

class Parent

  def override()
    puts "PARENT override()"
  end
  
  def implicit()
    puts "PARENT implicit()"
  end
  
  def altered()
    puts "PARENT altered()"
  end
end


class Child < Parent

  def override()
    puts "CHILD override()"
  end
  
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

puts "ALL THREE COMBINED"

dad.implicit()
son.implicit()

puts ""

dad.override()
son.override()

puts ""

dad.altered()
son.altered()

puts ""


