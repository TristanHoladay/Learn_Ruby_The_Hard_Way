require './directions.rb'

class Tomb
  include Directions

  def initialize
   @movements = {
                'N' => :north,
                'S' => :south,
                'E' => :east,
                'W' => :west
                }
  end

  def enter()
    puts "There it is. In the middle of the room, flush with the ground, is the sarcophagus of Ramen."
    puts "The sarcophagus is made of wood. No engravings, no gold or jewels, just wood."
    puts "Surround the walls of the tomb are shelves lined with what looks like enormous parchment scrolls."
    puts "And next to them all kinds of rudimentary mechanical objects and models."
    puts "Ramen valued knowledge above riches."



      def north
        puts "You walk over to the sarcophagus."
        puts "With bated breath you carefully lift the lid and push it off."
        puts "Inside, staring back you is Pharoah Ramen. Alive as ever.\n"
        puts "\"Hey. So i guess you found my tomb. Nice work.\"\n"
        puts "\"Uhhh....thanks. How are you alive\"\n"
        puts "\"Ehh, it's kind of hard to explain....soooo...i'm not going to.\"\n"
        puts "\"Oh ok.\""
        puts "\'Well do i get something for finding you?\"\n"
        puts "\"Oh, oh...yeah. Yeah i think i got something around here.\"\n"
        puts "Ramen rummages around underneath him."
        puts "\"Here you go!\"\n"
        puts "Ramen hands you a thick, curvy, noodle made of gold."
        puts "\"Hmmm...thank you i guess.\"\n"
        puts "\"Don't worry, you'll soon seen.\"\n"
        puts "\"If you say so. I think i'm going to get going now. Lots to do you know.\"\n"
        puts "\"Yeah, yeah. Nope i totally understand. Me too. I'm really buried right now in projects and stuff. So.\"\n"
        puts "\"Ok, well see you then.\"\n"
        puts "\"Yep, stairs out are on your left.\"\n"
        puts "With golden noodle in hand you find the stairs, not once looking back, and you climb your way back out, through a trap door, and into the desert sun."
        return 'final_battle'
      end

      def south
        puts "You can't go back the way you came."
        directions(@movements)
      end

      def east
        puts "You walk to the east wall."
        puts "On a shelf lies a little model of what looks to be an airplane."
        puts "What's crazy is it looks very similar to a design that would work."
        directions(@movements)
      end

      def west
        puts "You walk to the west wall and pick up a scroll."
        puts "You fight to unravel it. You know how scrolls are, always wanting to scroll."
        puts "On the inside is a drawing of what appears to be a pig wrapped in a blanket."
        directions(@movements)
      end

      directions(@movements)
  end

end
