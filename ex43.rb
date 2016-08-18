# http://learnrubythehardway.org/book/ex43.html
# Exercise 43: Basic Object-Oriented Analysis and Design

=begin
* Map
  - next_scene
  - opening_scene
* Engine
  - play
*Scene
  - enter
  * Death
  * Central Corridor
  * Laser Weapon Armory
  * The Bridge
  * Escape Pod
=end

class Scene
  def enter()
  end
end


class Engine

  def initialize(scene_map)
  end
  
  def play()
  end
end

class Death < Scene

  def enter()
  end
end

class CentralCorridor < Scene

  def enter()
  end
end

class LaserWeaponArmory < Scene

  def enter()
  end
end

class TheBridge < Scene

  def enter()
  end
end

class EscapePod

  def enter()
  end
end

class Map

  def initialize( start_scene)
  end
  
  def next_scene( scene_name)
  end
  
  def opening_scene()
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()

