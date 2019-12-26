require "./ex45Map.rb"

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end


  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('final_battle')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    current_scene.enter()
  end

end

a_map = Map.new('outside_pyramid')
game = Engine.new(a_map)
game.play()
