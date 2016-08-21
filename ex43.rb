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
      "    You died.  You kinda suck at this.\n\n",
      "    Your mom would be proud... if she were smarter.\n\n",
      "    Such a luser!\n\n",
      "    I have a small puppy that's better at this than you.\n\n"
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end


class CentralCorridor < Scene

  def enter()
    puts """
    The Gothons of Planet Percal #25 have invaded your ship and
destroyed your entire crew.  You are the last surviving member
and your last mission is to get the neutron destruct bomb from
the Weapons Armory, put it in the bridge, and blow the ship up
after getting into an escape pod

    You're running down the central corridor to the Weapons Armory
when a Gothon jumps out, red scaly skin, dark grimy teeth, and evil
clown costume flowing around his hate-filled body.  He's blocking
the door to the Armory and about to pull a weapon to blast you.

    Do you 'shoot', 'dodge', or try & 'talk' your way out of this?

"""

print "> "
  
    action = $stdin.gets.chomp
  
    if action == 'shoot'
      puts """
    Quick on the draw you yank out your blaster and fire it at the Gothon.
His clown costume is flowing and moving around his body, which throws
off your aim.  Your laser hits his costume but misses him entirely.  This
completely ruins the brand new costume his mother just bought him, which
makes him fly into an insane rage and blast you repeatedly in the face until
you are dead.  Then he eats you.

"""
      return 'death'
    
    elsif action == "dodge"
      puts """
    Like a world class boxer you dodge, weave, slip and slide right
as the Gothon's blaster cranks a laser past your head.  In the
middle of your artful dodge your foot slips and you bang your head
on the metal wall and pass out.  You wake up shortly after only to
die as the Gothon stomps on your head and eats you.

"""
      return 'death'
    
    elsif action == "talk"
      puts """
    Lucky for you they made you learn Gothon insults in the academy!
You tell the one Gothon joke you know:

        \"Lbhe zbgure vf fb sng, jura fur fvgf nebhaq
        gur ubhfr, fur fvgf nebhaq gur ubhfr . . .\"

    The Gothon stops, tries not to laugh, then bursts out laughing
and can't move.  While he's laughing you run up and shoot him
square in the head putting him down, then jump through the Weapon
Armory door.
"""
      return 'laser_weapon_armory'
    
    else
      puts "\n    \"%s\" DOES NOT COMPUTE!" % action
      sleep(2)
      return 'central_corridor'
    end 
  end
end


class LaserWeaponArmory < Scene

  def enter()
    puts """
    You do a dive roll into the Weapon Armory, crouch and scan the
room for more Gothons that might be hiding.  It's dead quiet, too
quiet.  You stand up and run for the far side of the room and find
the neutron bomb in its container.  There's a keypad lock on the box
and you need the code to get the bomb out.  If you get the code wrong
10 times then the lock closes forever and you can't get the bomb.
Unless you know a way to 'cheat' - the code is 3 digits:

"""
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guess = code if guess == "cheat" # CHEATING!!! NICE BIT OF LOGIC THO!
    guesses = 1
    
    while guess != code && guesses < 10
      puts "BZZZZEDDD!"
      guesses +=1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end
    
    if guess == code
      puts """
    The container clicks open and the seal breaks, letting gas out.
You grab the neutron bomb and run as fast as you can to the bridge
where you must place it in the right spot.
"""
      return 'the_bridge'
    else
      puts """
    The lock buzzes one last time and then you hear a sickening
melting sound as the mechanism is fused together.  You decide
to sit there, and finally the Gothons blow up your ship from
their ship and you die.

"""
      return 'death'
    end
  end
end


class TheBridge < Scene

  def enter()
    puts """
    You burst onto the Brdge with the neutron destruct bomb under
your arm and surprise 5 Gothons who are trying to take control of
the ship.  Each of them has an even uglier clown costume than the
last.  They haven't pulled their weapons out yet, as they see the
active bomb under your arm and don't want to set it off.

    Do you 'throw' the bomb at them, or, do you 'place' the bomb
carefully on the ground?

"""
    print "> "
    
    action = $stdin.gets.chomp
    
    if action == "throw"
      puts """
    In a panic you throw the bomb at the group of Gothons
and make a leap for the door.  Right as you turn around a
Gothon shoots you square in the back killing you, but not
instantly.  As you die in agonizing pain from a mortal
Gothon blaster wound, you see another Gothon frantically
try to disarm the bomb. You die knowing they will probably
blow up when it goes off

"""
      return 'death'
      
    elsif action == "place"
      puts """
    You point your blaster at the bomb under your arm
and the Gothons put their hands up and start to sweat.
You inch backward to the door, open it, and then carefully
place the bomb on the floor, pointing your blaster at it.
You then jump back through the door, punch the close button
and blast the lock so the Gothons can't get out.
Now that the bomb is placed you can run to the escape pod to
get off this tin can.

"""
      return 'escape_pod'
    else
      puts "\n    \"%s\" DOES NOT COMPUTE!" % action
      sleep(2)
      return "the_bridge"
    end
  end
end


class EscapePod

  def enter()
    puts """
    You rush through the ship desperately trying to make it to 
the escape pod before the whole ship explodes.  It seems like
hardly any Gothons are on the ship, so your run is clear of
interference.  You get to the chamber with the escape pods, and
now need to pick one to take. Some of them could be damaged
but you don't have time to look. There's 5 pods, which one
do you take?

"""
    good_pod = rand(1..5)
    print "[pod #]> "
    guess == $stdin.gets.chomp.to_i
    
    if guess != good_pod
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod escapes out into the void of space, then"
      puts "implodes as the hull ruptures, crushing your body"
      puts "into jam jelly."
      return 'death'
    else
      puts "You jump into pod %s and hit the eject button." % guess
      puts "The pod easily slides out into space heading to"
      puts "the planet below.  As it flies to the planet, you look"
      puts "back and see your ship implode then explode like a"
      puts "bright star, taking out the Gothon ship at the same"
      puts "time.  You won!"
      
      
      return 'finished'
    end
  end
end


class Finished < Scene
  def enter()
    puts "Good job!"
  end
end


class Map
  @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'laser_weapon_armory' => LaserWeaponArmory.new(),
    'the_bridge' => TheBridge.new(),
    'escape_pod' => EscapePod.new(),
    'death' => Death.new(),
    'finished' => Finished.new()
  }

  def initialize(start_scene)
    @start_scene = start_scene
  end
  
  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end
  
  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()

