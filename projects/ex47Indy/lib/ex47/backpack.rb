module Backpackable

  def put_in_backpack(trophy)
    @backpack = {}
    print '> '
    put = $stdin.gets.downcase.chomp

    if put =~ /yes/ || ~ /place/ || ~ /put/
      @backpack[trophy] = trophy
      puts "You added #{trophy} to your back back.\n Do you want to see your inventory?"
      inventory_response = $stdin.gets.downcase.chomp
    else
      puts "Ok, forget about it."
    end

    if inventory_response =~ /yes/
      @backpack.each_value {|value| puts value }
    else
      puts "Cool. Onward!"
    end

  end

end
