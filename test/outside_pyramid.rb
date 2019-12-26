require './player.rb'
require './directions.rb'


class OutsidePyramid
  include Directions

  def initialize
    @movements = {
                'N' => :north,
                'S' => :south,
                'E' => :east,
                'W' => :west
                }
    @redundant_direction_replies = ["You can't walk into the pyramid dummy.", "What point is there to go back?!", "You can't leave the pyramid."]
  end

  def enter()
    player = Player.new
    puts "The sun beats down and the wind whips!"
    puts "It took 20 years but here you are outside of the lost pyramid of Staacsmut."
    puts "Inside is the tomb of the great Pharoah Ramen."
    puts "And you'll be the first to find the lost Golden Noodle."
    puts "But be careful. Inside the pyramid is a labrynth of puzzles and booby traps."
    puts "And if the traps don't get you, the Nazi's hot on your trail will!"
    puts "Did I forget to mention its 1941. Oh well, now you know."
    puts "You need to find the secret entrance. Right now you're facing the West side of the pyramid."



    def north
      @next_movements = {
                        'N' => :north,
                        'S' => :south,
                        'E' => :east,
                        'W' => :west,
                        }
      puts "You head north down the West base, hook the corner and now you're facing the Northern Base."
      puts "There's nothing here."

      def north
      puts "#{@redundant_direction_replies[2]}"
      directions(@next_movements)
      end

      def south
        puts "#{@redundant_direction_replies[0]}"
        directions(@next_movements)
      end

      def east
        puts "You continue down the Northern Base, hook the corner, and now you're facing the East side."
        puts "You see nothing."
        puts "....Wait!..."
        puts "The wind pulls the sand aside revealing next to the pyramids foundation stones what looks like a stone lever."
        puts "You dig ferociously--about 6 feet down--to uncover the lever."
        puts "With all your body weight you pull the lever and the ground shakes as the sand gives way revealing a small, dark, entrance."

        #  would be cool to have fight here, get a torch and lighter for backpack and use it.
        puts "(*Gulp) You grab a torch out of your backpack, and light it up."
        puts "You enter the pyramid, and you think \'I just might never make it out of here...but oh well.\'"
        return 'stepping_stones'
      end

      def west
        puts "#{@redundant_direction_replies[1]}"
        directions(@next_movements)
      end

      directions(@next_movements)
    end


    def south
      @next_movements = {
                        'N' => :north,
                        'S' => :south,
                        'E' => :east,
                        'W' => :west,
                        }

      puts "You head South, hook the corner and now you're facing the Southern base."
      puts "There's nothing here."

      def north
        puts "#{@redundant_direction_replies[0]}"
        directions(@next_movements)
      end

      def south
        puts "#{@redundant_direction_replies[2]}"
        directions(@next_movements)
      end

      def east
        puts "You head East, hooke the corner, and now you're facing the Eastern base."
        puts "You see nothing."
        puts "....Wait!..."
        puts "The wind pulls the sand aside revealing next to the pyramids foundation stones what looks like a stone lever."
        puts "You dig ferociously--about 6 feet down--to uncover the lever."
        puts "With all your body weight you pull the lever and the ground shakes as the sand gives way revealing a small, dark, entrance."

        #  would be cool to have fight here, get a torch and lighter for backpack and use it.
        puts "(*Gulp) You grab a torch out of your backpack, and light it up."
        puts "You enter the pyramid, and you think \'I just might never make it out of here...but oh well.\'"
        return 'stepping_stones'
      end

      def west
        puts "#{@redundant_direction_replies[1]}"
        directions(@next_movements)
      end
    end

    def east
      puts "#{@redundant_direction_replies[0]}"
      directions(@movements)
    end

    def west
      puts "#{@redundant_direction_replies[2]}"
      directions(@movements)
    end

    directions(@movements)
end
end
