# http://learnrubythehardway.org/book/ex44.html
# Exercise 44: Inheritance Versus Composition
# https://github.com/bbatsov/ruby-style-guide

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


# Using super() with initialize
# This is the same as the Child.altered example above, except I'm
# setting some variables in the initialize before having the
# Parent initialize with its Parent.initialize.

# class Child < Parent
  # def initialize(stuff)
    # @stuff = stuff
    # super()
  # end
# end

# super_dooper = Child.new()
# super_dooper.implicit()
# super_dooper.override()
# super_dooper.altered()


# Composition instead of Inheritance

class Other

  def override()
    puts "OTHER override()"
  end
  
  def implicit()
    puts "OTHER implicit()"
  end
  
  def altered()
    puts "OTHER altered()"
  end
end


class Child

  def initialize()
    @other = Other.new()
  end
  
  def implicit()
    @other.implicit()
  end
  
  def override()
    puts "CHILD override()"
  end
  
  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

puts "COMPOSITION: 'has-a' not a 'is-a' relationship"
son.implicit()
son.override()
son.altered()
puts ""

# MODULE - comment out other "Other" declarations to run

require "./ex44_other.rb"
son = Child.new()
son.implicit()
son.override()
son.altered()