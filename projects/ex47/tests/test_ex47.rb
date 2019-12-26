require "ex47/mini_game.rb"
require "test/unit"

class TestGame < Test::Unit::TestCase

    def test_room()
        outside_pyramid = Room.new("Outside Pyramid",
                    """This is the opening scene outside of the main point of game play.""")
        assert_equal("Outside Pyramid", outside_pyramid.name)
        assert_equal({}, outside_pyramid.paths)

        stepping_stones = Room.new("Stepping Stones",
                    """Stepping Stones is the first real room, and is the first puzzle to solve,
                    with collapsing floor""")
        assert_equal("Stepping Stones", stepping_stones.name)
        assert_equal({}, stepping_stones.paths)
    end

    def test_room_directions()
        center = Room.new("Center", "blah blah blah")

                          def north
                            puts "i'm north"
                          end

                          def south
                            puts "I'm south"
                          end

        x = center.add_paths({'north'=> :north, 'south'=> :south})
        assert_send([x, :include?, 'north'], "it didn't return true")
        assert_send([x, :include?, 'south'], "it didn't return true")
        #assert_instance_of(Hash, @paths, "Is not a hash")
        assert_equal(:north, center.go('north'), "it didn't #{send :north}")
        assert_equal(:south, center.go('south'), "It didn't #{send :south}")

    end

    def test_map()
        map = Room.new("Beginning", "a class that gets feeds the first scene state", 'outside_pyramid')
        outside_pyramid = Room.new("First Scene", "Can move around the pyramid.", nil)
        stepping_stones = Room.new("First Puzzle Room", "Collapsing floor puzzle", nil)
        final_battle = Room.new("Finale", "It's the victory scene.", nil )

        map.add_paths({'outside_pyramid'=> outside_pyramid, 'stepping_stones'=> down,
                        'final_battle' => final_battle})

        assert_equal(outside_pyramid, map.play('stepping_stones'))
        assert_equal(stepping_stones, map.play('final_battle'))
        assert_equal(final_battle, map.play(nil))
    end
end
