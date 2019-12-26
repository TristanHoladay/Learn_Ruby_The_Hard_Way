require_relative 'directions.rb'

class Room
  include Directions


  def initialize(name, description, start_scene)
    @name = name
    @description = description
    @paths = {}
    @start_scene = start_scene
  end

  # these make it easy for you to access the variables
  attr_reader :name
  attr_reader :paths
  attr_reader :description

  # this is like next_scene from Map
  def go(direction)
    return @paths[direction]
  end

  # this allows to create the room hsh that the Map and Engine pull from.
  def add_paths(paths)
    @paths.update(paths)
  end

  def next_scene(scene)
   val = @paths[scene]
   return val
  end

  def opening_scene()
   return next_scene(@start_scene)
  end

  def play(class_instance)

    def enter(class_instance)
      puts "I'm the enter method"
      return class_instance
    end

    current_scene = opening_scene()
    last_scene = next_scene('final_battle')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = next_scene(next_scene_name)
    end

    current_scene.enter()
  end

end
