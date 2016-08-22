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

dad.implicit()
son.implicit()

