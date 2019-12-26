require './combatable.rb'


class Enemy
  include Combatable

  def enemy_appears
    puts "A Nazi has found you!"
    puts "Engage or run away?"
    print '> '
    engaged = $stdin.gets.chomp

    if engaged =~ /engage/
      return fight
    end

    if engaged =~ /run/
      return 'coward'
    end

  end
end
