class Player


  def initialize
    puts "Welcome Indy"
    puts "Are you ready for an adventure?"
    print '> '
    $stdin.gets.chomp
    puts "Good!"
    puts "Before you start, let's have a quick briefing.\n"
    puts "You can choose a direction using \'N\' for North, \'S'\ for South,"
    puts "\'E\' for East, and \'W\' for West.\n"
    puts "Now let's get going!"
  end

end
