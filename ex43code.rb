class Scene
  $backpack = {}

  def enter()
    exit (1)
  end
end

class Engine # runs a map full of rooms or scenes

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

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene # inherits from Scene, when player dies and should be funny

  @@quips = ["The Gothon scares you so bad that you crap your pants!\n Then you try to change your pants with the clean pair in your backpack,\n but then you trip while taking off your slippery poop pants and you fall and hit your head!\n You fade into peaceful oblivion.\n Unfortunately, the Gothon's live stream their victory to theirs and yours home planets and everyone sees a close-up of your naked poopy butt cheecks.",
  "Wow you died. No surprise there!", "How about you eat some win berries and try this again loser!", "You're parents are so proud....Not!! Ha, gets them every time."]

  def enter()
    puts @@quips[rand(0..(@@quips.length-1))]
    puts "Do you want to play again? "
    print '> '
    again = $stdin.gets.downcase.chomp

    if again =~ /yes/
      return 'central_corridor'
    else
      "Ok."
      exit (1)
    end
  end
end

class CentralCorridor < Scene


  def enter()
    puts "You crawled your way onto the Gothon ship, to exact vengeance on the Gothons for killing your crew on planet \"Gang Gang\""
    puts "Your Goal?!? To find the Gothon armory and using one of their own neutron bombs eliminate the Gothon crew and ship, yourself escaping in one of their pods."
    puts "What do you have on you?\n Besides your rugged good looks (a weapon depending on the circumstance, am i right?!)\n you have a backpack for storage, an AR-Blaster (shoots laser 5.56 rounds),\n a sweat band to keep your vision clear in dire situations,\n a great sense of humor,\n and a steely-iron will!"
    #puts "Helpful things before you start:\n
        #you can move forward, back, left, or right.\n
        #There are random objects in each room.\n
        #Find the objects to sell for bonus coin\n
        #When you return to your home planet."
        puts "As you quietly move forward, a Gothon comes out of a room, locks it, and when he turns he sees you."
        puts "You better act fast."
        print '> '

      action = $stdin.gets.downcase.chomp

      if action =~ /look good/
        puts "The Gothon is stunned for a second by how ruggedly attractive you are and then he eats you whole!"
        return 'death'
      elsif action =~ /shoot/
        puts "You raise your AR-Blaster, aim, and you hit dead center mass. You drop 30 rounds into the ugly creature. The Gothon is high on Gothon heroin and doesn't feel it. He charges you, falls on top of you as his last act, and you're crushed to death."
        return 'death'
      elsif action =~ /joke/
        puts """Hey Gothon!
                              Hey what you puny sack of meat?
                              Knock Knock...
                              (with great reluctance, producing physical perspiration, the Gothon replies) Who...who's there?
                              I eat mop.
                              I ea..eat mop who?
                              That's revolting!!
                              (And like that the Gothon cracks a slight smile, let's out a little chuckle, and then falls dead.)"""
        puts "Nice work Hero!"
        puts "With one Gothon down, you make your way down the central corridor and find a room on your right."
        return 'bedroom'
      else
        puts "DOES NOT COMPUTE"
        return 'central_corridor'
      end
    end
  end


class LaserWeaponArmory < Scene # hero gets neutron bomb to blow up ship as he escapes

    def initialize
    end

    def enter()
      puts "Ah ha. The Gothon armory! Geez they have lots of weapons.\n It looks like there are two rows of shelved weapons. Where the heck is that neautron bomb?!"
      print '> '

      def pick_bomb
        puts "You found the neutron bomb. Now what?"
        print '> '
        decision = $stdin.gets.downcase.chomp

        if decision =~ /kick/
          puts "You exploded and are now a space molecule!"
          return 'death'
        elsif decision =~ /pick/
          puts "Good idea, let's pick it up and put it in our backpack and run wildly\n with it until we get to the bridge\n and just hope it doesn't explode before we get there!"
          $backpack["neutron bomb"] = "neutron bomb"
          return 'bridge'
        else
          puts "How \'bout we just put it in the backpack ummk..."
          $backpack["neutron bomb"] = "neutron bomb"
          return 'bridge'
        end
      end

      def movement
        movement_LWA = $stdin.gets.downcase.chomp

        if movement_LWA =~ /forward/
          puts "You ran into a shelf. No neutron bomb here. Maybe try going left or right."
          enter
        elsif movement_LWA =~ /left/
          puts "Ok, now we're talking. At the end of the first aisle are some grenades,\n but no neutron bombs. What next?"
          print '> '
          movement_left_side =$stdin.gets.downcase.chomp
          if movement_left_side =~ /forward/
            puts "Ok and then?"
            print '> '
            movement_left_side_again = $stdin.gets.downcase.chomp
            if movement_left_side_again =~ /right/
              puts "That's it. Down at the end of the second row, under a dusty canvas cover, sits the neutron bomb!!"
              pick_bomb
            else
              puts "Let's start over."
              enter
            end
          else
            puts "Let's start over."
            enter
          end
        elsif movement_LWA =~ /right/
          puts "Ok, there's nothing on this row. You reach the end. Now what?"
          print '> '
          movement_right_side =$stdin.gets.downcase.chomp
          if movement_right_side =~ /left/
            puts "That's it. At the end of the second row, under a dusty canvas cover, sits the neutron bomb!!"
            pick_bomb
          else
            puts "Let's start over."
            enter
          end
        else
          puts "It's like your momma said,\n \'Don't put off today cause you can do it tomorrow...or don't do something tomorrow that you can't do today\'...or whatever.\n You get it! We need the neutron bomb now!"
          enter
        end
      end


    movement

    end

end




class EscapePod < Scene # hero escapes after guessing right pod; so i'm thinking a simple array or hash

  def enter()
    puts "There are too many escape pods to choose from. What if they're booby trapped?..."
    puts "You see a Gothon riddle posted to the Escape Pod door.\n\n \'To find the operational pod you must win 2 out of 3.\n But what could the game be?...It's rock paper scissors.\'\n (Gothon's aren't known for their riddles.)"

    @rock_paper_scissors = {"rock" => "rock beats scissors",
                          "scissors" => "scissors beats paper",
                          "paper" => "paper beats rock"}
    puts "Let's be clear here."
    @rock_paper_scissors.each do |key, value|
      puts "#{value}"
    end

    @defeat = 0
    @win = 0

    def play
      puts "Let's try this!"
      print '> '
      @guess = $stdin.gets.downcase.chomp


    chance = @rock_paper_scissors.keys.sort_by {rand}
    #outcome = rand(0..2)   #my roundabout way of generating a random index
    #final_outcome = chance[outcome]
    #p final_outcome
    computer = chance.sample(1)
    p computer

      def guess_validation
        guess_arr =["rock", "paper", "scissors"]
        if !guess_arr.include?(@guess)
          puts "That's not a valid answer."
          play
        end
      end
        guess_validation

      if computer[0] == @guess
          puts "Tie"
      elsif computer[0] == "rock" && @guess == "scissors"
        puts "you're beat"
        @defeat += 1
      elsif computer[0]== "scissors" && @guess == "paper"
        puts "you're beat"
        @defeat += 1
      elsif computer[0]== "paper" && @guess == "rock"
        puts "You're beat"
        @defeat += 1
      else
        puts "You won!"
        @win += 1
      end

      if @win == 2
        puts "Ah Ha. You beat the Gothon mainframe.\n The boopy-trapped pods slide back, revealing pod 3.\n You get in and off you go!\n From the safety of space you watch the Gothon ship explode. [Insert Catch Phrase]."
        return 'finished'
      end

    @victory_or_death = 1


      if @defeat < 2
        play
      elsif @defeat == 2 && @victory_or_death != 2
        puts "Ouch. You lost. Don't cry just yet ya wittle baby. Try again!"
        @victory_or_death += 1
        @defeat = 0
        play
      elsif @defeat == 2 && @victory_or_death == 2
        puts "All the pods slide back but pod 6.\n You hop in, eject from the ship, and as you watch the Gothon spaceship go up in flames your pod self-destructs.\n You got the wrong one!"
        return 'death'
      end


    end
    play
  end
end

class Bedroom < Scene

  def enter()
    puts "Ahh where the magic happens....\n you know cause gothon's are really into harry potter and they practice\n their...umm...\"spells\" in the bedroom."
    puts "There's got to be something cool in here."


  def movements
    print '> '
    movement = $stdin.gets.downcase.chomp

    if movement =~ /forward/
      puts "A big squishy water bed. Huh..."
      movements
    elsif movement =~ /left/
      puts "A Gothon dresser. I wonder what's inside?"
      print '> '
      dresser = $stdin.gets.downcase.chomp
      if dresser =~ /open/
        puts "Whaa?! There's nothing in here."
      else
        puts "That's not the correct response, let's move on."
        movements
      end
    elsif movement =~ /right/
      puts "Oooo. A Gothon closet. What's in there?"
      closet = $stdin.gets.downcase.chomp
      if closet =~ /open/
        puts "Gothon shirts. Gothon pants. Gothon lingerie (eek!).\n Oh wait. There in the corner is something.\n It looks like a scrap book."
        scrapbook = $stdin.gets.downcase.chomp
        if scrapbook =~ /pick/
          puts "Oh whaaaat!?! Look at this Gothon as a kid and as a teenager doing silly Gothon teenager things. Keep it?"
          keep_it = $stdin.gets.downcase.chomp # here's where could run backpack method
          if keep_it =~ /yes/
            $backpack["scrapbook"] = "scrapbook"
          else
            puts "Coo Coo Coo. Just checking?"
          end
        else
          puts "Alright, but that's a rad find."
        end
      else
        puts "I'm a robot. DOES NOT COMPUTE"
        movements
      end
    else
      puts "Okie Doke."
    end

  end
    movements
    return 'toilet'
end

end

class Toilet < Scene
  def enter()

    bowel_movements = ["pee", "piss", "poop", "crap", "number 1", "number 2"]

    puts "Oh sweet. The toilet."
    puts "Well since you're here maybe you should take advantage of the opportunity."
    puts "What'll it be?"
    print '> '
    bathroom = $stdin.gets.downcase.chomp

    if bowel_movements.include?(bathroom)
      puts "Nice!"
      puts "Now that that's finished. Look in the mirror cabinet."
    else
      puts "How about you look in the mirror cabinet, cowboy."
    end

    print '> '
    mirror_c = $stdin.gets.downcase.chomp

    if mirror_c =~ /open/
      puts "Well would you look at that--Gothon hair gel."
      puts "I bet this stuff could keep a wet towel stiff."
      puts "Backpack? Or no?"
      print '> '
     put_gel = $stdin.gets.downcase.chomp
       if put_gel =~ /yes/ || ~ /put/ || ~ /place/
         $backpack["gothon hair gel"] = "gothon hair gel"
         p $backpack
         puts "Ok. We're good to go."
         # command to go to next scene ???
       else
         puts "Fine, don't take it then!"
       end
    else
      puts "Alright, back to the mission we go."
      # command exit to the next scene ??
    end
 return 'laser_weapon_armory'
end
end

class Bridge < Scene # use a random num generator to create a code to activate the bomb

  def enter()
    puts "Whoa the Gothon bridge. And a real live Gothon at the helm.\n Oh shooooot. Another real live Gothon!!! Your feet are frozen in fear\n (don't worry you'll leave this part out when telling the story to all the girls back home *thumbs up*)"
    puts "What should you do?"
    print '> '
    reaction = $stdin.gets.downcase.chomp

    if reaction =~ /shoot/
      puts "You dumby...don't you remember shooting Gothon's doesn't work.\n The Gothon jumps the railing and bear hugs you to death."
      return 'bridge'
    elsif reaction =~ /joke/
      puts "A ham sandwich walks into a bar and orders a beer,\n
            bartender says \"sorry, we don't serve food here.\""
      puts "The Gothon looks over, cracks a slight smile, and falls over dead."
      puts "My God, you've done it again!"
    else
      puts "You're frozen in fear dipwilly."
      return 'bridge'
    end

    puts "Now, it's time to place the neutron bomb!\n
          but you've got to activate it using a code."
    puts "It's a 3 digit code.\n If you get it wrong more than 10 times you're going kaboom with the ship.\n I hope you ate your wheaties cause this birds nest is about to get fiberous!...."
    code = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    code_arr = code.to_s.split('')
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guess_arr = guess.to_s.split('')
    guesses = 1

    while guess != code && guesses < 10 # runs till code == guess or once it hits 10 iterations moves on to the next if-else statement
      puts "BZZZZZEDDD!"

      if guess_arr & code_arr != false
        puts "#{guess_arr & code_arr} are the number\/s you guessed that are somewhere in the code."
      else
        puts "None of your numbers match."
      end

      if guess_arr[0] == code_arr[0] # might be able to create a simple matching code that outputs the matching numbers
        puts "You got the first number right."
      else
        puts "First number is wrong."
      end

      if guess_arr[1] == code_arr[1]
        puts "You got the second number right."
      else
        puts "Second number is wrong."
      end

      if guess_arr[2] == code_arr[2]
        puts "You got the third number right."
      else
        puts "Third number is wrong."
      end

      guess_arr.clear
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp # guess is changing each time but not the code
      guess_arr = guess.to_s.split('')
    end

    if guess == code
      puts "Eureka! You did it Sherlock."
      puts "Now place the bomb under the control panel and vamoose!"
      print '> '
      place = $stdin.gets.downcase.chomp
      puts "The bomb is armed and ticking. Go Go Go!"
      return 'escape_pod'
    else
      puts "Well partner it was a good ride.\n At least you'll take these Gothon scum with you. (But can you really call them scum?\n Heck they probably have families and kids just like you.\n They might even be real cool under different circumstances....No, no. Kill \'em all!!)"
      return 'death'
    end
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map
    @@scenes = {
      'central_corridor' => CentralCorridor.new(),
      'laser_weapon_armory' => LaserWeaponArmory.new(),
      'bridge' => Bridge.new(),
      'escape_pod' => EscapePod.new(),
      'toilet' => Toilet.new(),
      'bedroom' => Bedroom.new(),
      'death' => Death.new(),
      'finished' => Finished.new(),
    }


  def initialize( start_scene)
    @start_scene = start_scene
  end

  def next_scene( scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('central_corridor') # c_c is the starting point, defeat the Gothon with a joke
a_game = Engine.new(a_map)
a_game.play()
