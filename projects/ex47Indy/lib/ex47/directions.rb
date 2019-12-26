module Directions

  def directions(class_hsh)
    @class_hsh = class_hsh

    puts "Which way?"
    print '> '
    @direction = $stdin.gets.chomp

    if @class_hsh.include?(@direction)
      send @class_hsh[@direction]
    else
      puts "That's not a valid direction input. Try again."
      directions(@class_hsh)
    end

  end

end
