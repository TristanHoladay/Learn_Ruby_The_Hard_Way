require './Enemy.rb'
class FakeTomb

  def enter()
    puts "In the flicker of your torch light you can see there's a trouph running on the ground."
    puts "You bend down and feel oil running through the trouph."
    puts "You touch your torch to it and boom the room erupts with light!"
    puts "In the middle of the room is a golden sarcophagus. It's magnificent."
    enemy = Enemy.new.enemy_appears
    puts "Now that that's done!"
    puts "You walk closer. The artwork on the tomb is exquisite."
    puts "It's time to see the great Pharoah ____."
    puts "Would you like to open it? "
    print '> '

    decision = $stdin.gets.chomp

    if decision != /no/
      puts "You lift the lid. It's heavy. Suddenly a rush of gas comes exploding out of the sarcophagus."
      puts "It's acidity eats your face off and you stumble into the oil trouph and are burned alive."
      return 'death'
    else
      puts "Good decision!"
      puts "It's a fake!"
      return 'tomb'
    end
  end
end
