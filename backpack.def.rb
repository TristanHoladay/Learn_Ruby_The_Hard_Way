def put_in_backpack # create one backpack method that can be used for all scenes and random objects.
  print '> '
  put = $stdin.gets.downcase.chomp

  if put =~ /yes/ || ~ /place/ || ~ /put/
    @backpack[***] = "***" # place holders for whatever object is in the scene.
    puts "You added #{***} to your back back.\n Do you want to see your inventory?"
    inventory_response = $stdin.gets.downcase.chomp
  else
    puts "Ok, forget about it."
  end

  if inventory_response =~ /yes/
    backpack.each_value {|value| puts value}
  else
    puts "Cool. Onward!"
  end

end
