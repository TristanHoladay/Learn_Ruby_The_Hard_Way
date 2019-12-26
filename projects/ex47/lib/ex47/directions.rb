module Directions

  def directions(class_hsh, symbol)
    @class_hsh = class_hsh
    @direction = symbol

    # @direction = $stdin.gets.chomp

    if @class_hsh.include?(@direction)
      send @class_hsh[@direction]
    else
      puts "That's not a valid direction input. Try again."
      directions(@class_hsh, @direction)
    end

  end

end
