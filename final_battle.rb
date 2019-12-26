require './finished'

class FinalBattle


    def enter()
      puts "You look up."
      puts "Surrounding you are 1000 Nazi's with tanks and artillery pieces, all pointed at you."
      puts "The urge to fill your pants comes rushing on, until you feel a weird flopping sensation in your hand."
      puts "You look down and the golden noodle is squirming around."
      puts "And suddenly you know what to do."
      print '> '
      attack = $stdin.gets.chomp

      if attack =~ /throw/
        puts "You launch the golden noodle into the sky."
        puts "There's a flash and suddenly big, wet, noodles--at least 12 feet in diameter--begin falling on the Nazis."
        puts "You watch as they are squashed and then absorbed by the gargantuan strands of pasta."
        puts "Looks like the vultures are going to get a change of pace from chicken and beef."
        return 'victory'
      else
        puts "No ya dummy. You gotta throw it."
        puts "You launch the golden noodle into the sky."
        puts "There's a flash and suddenly big, wet, noodles--at least 12 feet in diameter--begin falling on the Nazis."
        puts "You watch as they are squashed and then absorbed by the gargantuan strands of pasta."
        puts "Looks like the vultures are going to get a change of pace from chicken and beef."
        return 'finished'
      end

    end
