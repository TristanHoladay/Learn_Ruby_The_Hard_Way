def gold_room
  puts "This room is full of gold. How much do you take?"

  print '> '
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it.
if choice = ~/0/ || ~/1/ || ~/2/ || ~/3/ || ~/4/ || ~/5/
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
    if how_much < 50
      puts "Nice, you're not greedy, you win!"
      exit(0)
    else
      dead("You greedy bastard!")
    end
end
