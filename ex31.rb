puts "You enter a dark room with four doors. Do you go through door \#1 or door \#2 or door \#3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job!"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job!"
  end

elsif door  == "3"
  puts "You have found a delicous chocolate pie. It looks good but you wonder if it's poisoned. Do you eat it? Yes or No."

print "> "
pie = $stdin.gets.chomp


  if pie == "Yes" || pie == "yes" || pie == "YES" # what i found was that i was getting a "string literal in condition" error and it was never printing the string for no when the format was if pie == "yes" || "Yes" || "YES". it's because only the first part of the conditional is being compared to the value of pie. it's like saying 3 || true || true. the "Yes" or "YES" are true because the computer doesn't recognize that they also need to be compared to the value of pie.
    puts "Hurray you just ate a delicious chocolate pie, enjoyed it, and then died from incessant diahrea! Gross."
  elsif pie == "No" || pie == "no" || pie == "NO"
    puts "You are sad because you didn't eat the delicious pie, but you watch a bear eat it and shit himself to death. Go figure."
  else
    puts "You can't decide and die of starvation."
  end

else
  puts "You stumble around and fall on a knife and die. Good job!"
end
