require './fight_victory.rb'

module Combatable


    def player_attack

       @attacks = {
                  "punch" => [10, 15, 20],
                  "kick" => [20, 25, 27],
                  "gun" => [35]
                  }

       print '> '
       @response = $stdin.gets.chomp

       if @player_bullets == 0 && @response == "gun"
         puts "You're out of bullets!"
         puts "Choose another attack!"
         player_attack
       end

       if @attacks.has_key?(@response) && @response != "gun"
         @damage_arr = @attacks[@response]
         @damage = @damage_arr.sample
       elsif @attacks.has_key?(@response) && @response == "gun"
         @damage_arr = @attacks[@response]
         @damage = @damage_arr.sample
         @player_bullets -= 1
       else
         puts "Not an attack!"
         player_attack
       end

       @misses = @chances.sample

       if @misses =~ /no/
         puts "You missed"
         enemy_attack
       else
         puts "You did #{@damage} damage!"
         @enemy_health -= @damage
         puts "His health is now #{@enemy_health}."
       end

       if @enemy_health <= 0
         vic = FightVictory.new.victory
       end

       while @player_health > 0
         if @enemy_health <= 0
           break
         end
         if @enemy_health <= 0
           vic = FightVictory.new.victory
         end
         enemy_attack
       end

     end

   def enemy_attack

     @attacks = {
                "punch" => [10, 15, 20],
                "kick" => [20, 25, 27],
                "gun" => [35]
                }

     if @enemy_bullets == 0
       @attacks.delete("gun")
     end

     key = @attacks.keys.sample
     { key: @attacks[key] }

     if key == "gun"
       @enemy_bullets -= 1
     end

     puts "The Nazi scum uses #{key}."
     @miss = @chances.sample

     if @miss =~ /no/
       puts "He missed"
       puts "Your turn"
       player_attack
     else
       @damage_arr = @attacks[key]
       @damage = @damage_arr.sample
       puts "He did #{@damage} damage."
       @player_health -= @damage
       puts "Your health is now #{@player_health}."
     end

     if @player_health <= 0
       puts "You have dishonored your legend Indy."
       return 'death'
     end

     until @enemy_health <= 0
       player_attack
     end
   end

   def fight
     @player_health = 100
     @player_bullets = 2
     @enemy_health = 100
     @enemy_bullets = 2

      @chances = ["yes", "no", "yes"]


      @first_attack = @chances.sample

      while @enemy_health > 0
        if @first_attack =~ /yes/
          puts "You got the jump. Attack!"
          puts "Punch, kick, or use gun?"
          player_attack
        else
          puts "He got the jump on you."
          enemy_attack
        end
      end
    end

 end
