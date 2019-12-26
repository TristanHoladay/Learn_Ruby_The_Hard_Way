# a hash holding instances of all the Classes of rooms as values and the Class name lowercase as keys.
# each class will need to require Map and maybe even eninge(?)

require './final_battle.rb'
require './death.rb'
require './coward.rb'
require './outside_pyramid.rb'
require './stepping_stones.rb'
require './fake_tomb.rb'
require './tomb.rb'
require './Enemy.rb'


class Map

  @@game_map = {

      'outside_pyramid' => OutsidePyramid.new,
      'stepping_stones' => SteppingStones.new,
      'fake_tomb' => FakeTomb.new,
      'tomb' => Tomb.new,
      'final_battle' => FinalBattle.new,
      'coward' => Coward.new,
      'death' => Death.new,
      }

  def initialize(start_scene)
    @start_scene = start_scene
  end

  def next_scene(scene)
   val = @@game_map[scene]
   return val
  end

  def opening_scene()
   return next_scene(@start_scene)
  end

end
