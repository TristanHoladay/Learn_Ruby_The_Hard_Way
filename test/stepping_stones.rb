class SteppingStones

  def initialize
    @stones = ["1, 2", "2, 1", "3, 1", "4, 2", "5, 1"]
  end

  def enter()

    puts "You're inside the belly of the Ramen now."
    puts "In the dim glow of the torch you can see that you're in a room rather large."
    puts "And the floor is made up of big square stones, each with what looks like one of two symbols on them."
    puts "You bend over to get a better look. You realize it's the Egyptian symbol for \'X\' and \'O\'.\n"
    puts "The room is 3 columns wide, 5 rows deep."
    puts "The stones alternate symbols going across and up."
    puts "You take a loose bit of dirt, put it in a spare pouch, and toss the pouch into the middle of the room."
    puts "As you expected, the stone gives way immediately!\n"
    puts "You're going to have to figure out the right path to take."
    puts "You look around."
    puts "On the wall to the left you notice in the flickering light a sequence of symbols."
    puts """
        X
        X
        O
        O
        O"""
    puts "You have one more pouch you can use to figure this out."
    puts "Do you want to throw it out?"
    print '> '

    choice = $stdin.gets.chomp

    if choice == "yes"
      puts "You throw out your last pouch."
      puts "It lands on row 2 column 3, it's an \'X\'. It gives way."
    else
      puts "Ok. You've got this."
    end

    puts "Give the step sequence in order of row, column."
    print 'step one: '
    step_one = $stdin.gets.to_s.chomp

    print 'step two: '
    step_two = $stdin.gets.to_s.chomp

    print 'step three: '
    step_three = $stdin.gets.to_s.chomp

    print 'step four: '
    step_four = $stdin.gets.to_s.chomp

    print 'step five: '
    step_five = $stdin.gets.to_s.chomp

    if step_one != @stones[0] || step_three != @stones[2] || step_four != @stones[3] || step_five != @stones[4]
      return 'death'
    else
      puts "Eureka! You made it across the room without falling into the pit of spikes you realized lay below."
      return 'fake_tomb'
    end
  end
end
