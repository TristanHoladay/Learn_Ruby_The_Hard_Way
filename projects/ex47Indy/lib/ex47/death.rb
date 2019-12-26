class Death

  def enter()
    puts "You died. Bummer."
    puts "So you want to get back up on this horse?"
    print '> '
    again = $stdin.gets.chomp

    if again =~ /yes/
      return 'outside_pyramid'
    else
      exit (0)
    end
  end

end
