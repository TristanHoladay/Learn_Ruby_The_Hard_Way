require './backpack.rb'

class FightVictory
  include Backpackable

  def victory
    @adds = 1
    while @adds < 2
      trophies = ["a sweet knife", "pack of cigarettes", "a lighter", "a cuddly teddy bear", "a record player", "a flute", "twenty bucks", "spam", "kielbasa"]
      puts "You kicked his nazi butt!"
      trophy = trophies.sample
      puts "You find #{trophy} on his dead corpse."
      puts "Sweet! Add it to the backpack."
      put_in_backpack(trophy)
      @adds += 1
    end
  end

end
