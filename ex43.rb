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
  puts "This scene is not yet configured. Subclass it and implement enter()."
  exit(1)
  end
end


class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end
  
  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')
    
    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end
    
    #be sure to print out the last scene
    current_scene.enter()
  end
end


class Death < Scene

  @@quips = [
      "You dies.  You kinda suck at this.",
      "Your mom would be proud... if she were smarter.",
      "Such a luser.",
      "I have a small puppy that's better at this."
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length -1))]
    exit(1)
  end
end


class CentralCorridor < Scene

  def enter()
    puts """The Gothons of Planer Percal #25 have invaded your ship and destroyed
your entire crew.  You are the last surviving member and your last
mission is to get the neutron destruct bomb from the Weapons Armory,
put it in the bridge, and blow the ship up after getting into an
escape pod

You're running down the central corridor to the Weapons Armory when
a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown
costume flowing around his hate-filled body.  He's blocking the door
to the Armory and about to pull a weapon to blast you.
"""

print "> "
  
    action = $stdin.gets.chomp
  
    if action == 'shoot!'
      puts """Quick on the draw you yank out your blaster and fire it at the Gothon.
His clown costume is flowing and moving around his body, which throws
off your aim.  Your laserhits his costume but misses him entirely.  This
completely ruins the brand new costume his mother bought him, which
makes him fly into an insane rage and blast you repeatedly in the face until
you are dead.  Then he eats you.
"""
      return death
    
    elsif action == "dodge!"
      puts """Like a world class boxer you dodge, weave, slip and slide right
as the Gothon's blaster cranks a laser past your head.
In the middle of your artful dodge your foot slips and you
bang your head on the metal wall and pass out.
You wake up shortly after only to die as the Gothon stomps on
your head and eats you.
"""
      return 'death'
    
    elsif action == "tell a joke"
      puts """Lucky for you they made you learn Gothon insults in the academy.
You tell the one Gothon joke you know:
Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr.
The Gothon stops, trieds not to laugh, then bursts out laughing and can't move.
While he's laughing you run up and shoot him square in the head
putting him down, then jump through the Weapon Armory door.
"""
      return 'laser_weapon_armory'
    
    else
      puts "DOES NOT COMPUTE!"
      return 'central_corridor'
    end 
  end
end


class LaserWeaponArmory < Scene

  def enter()
    puts """You do a dive roll into the Weapon Armory, crouch and scan the room
for more Gothons that might be hiding.  It's dead quiet, too quiet.
You stand up and run for the far side of the room and find the
neutron bomb in its container.  There's a keypad lock on the box
and you need the code to get the bomb out.  If you get the code
wrong 10 times then the lock closes forever and you can't
get the bomb.  The code is 3 digits.
"""
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0
    
    while guess != code && guesses < 10
      puts "BZZZZEDDD!"
      guesses +=1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end
    
    if guess == code
      puts """The container clicks open and the seal breaks, letting gas out.
You grab the neutron bomb and run as fast as you can to the
bridge whenre you must place it in the right spot.
"""
      return 'the_bridge'
    else
      puts """The lockbuzzes one last time and then you hear a sickening
melting sound as the mechanism is fused together.
You decide to sit there, and finally the Gothons blow up your
ship from their ship and you die.
"""
      return 'death'
    end
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

