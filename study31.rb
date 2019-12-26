puts "Choose your AO (Area of Operations):"
puts "1. Forrest"
puts "2. Urban"
puts "3. Jungle"
puts "4. Ship"
puts "5. Desert"

print '> '
ao = $stdin.gets.chomp # needs to be converted to integers otherwise it's like saying is 1 == "One" or vicer versa

if ao == "1"
  puts "You're walking through the Hurtgen Forrest. Looking for the MLR (Main Line of Resistance)."
  puts "German shells start raining down. Explosions everywhere, shrapnel and massive tree splinters slicing imperceptively throught he air."
  puts "You see two craters, which one do you take:"
  puts "1. 20 yars to your left."
  puts "2. 30 yards to your right."

  print '> '
  foxhole = $stdin.gets.chomp # unless you put the inputed value in "" when you compose the conditional statement

    if foxhole == "1"
      puts "You made it 10 yards and a splinter sliced your legs in half.\n You 1. call for a medic or 2. crawl to the crater?"
      print '> '
      choiceA = $stdin.gets.chomp

        if choiceA == "1"
          puts "You called the medic and no one came. You died."
        elsif choiceA == "2"
          puts "You crawled to the crater and your buddy put a tourniquet on your leg and saved your life!"
        end
    elsif foxhole == "2"
      puts "You sprinted to the hole, jumped inside, and found a german forward observer, caught in his own fire mission, cowering in the crater. What do you do?\n 1. huddle together and fight after the shelling; 2. shoot him; 3. hit him over the head and take him prisoner."
      print '> '
      choiceB = $stdin.gets.chomp
          if choiceB == "1"
            puts "You hold eachother until the shelling stops and he shoots you."
          elsif choiceB == "2"
            puts "You shoot him, and after the shelling find out he was the infamous german spy, Ludwig, who was wanted for interrogation."
          elsif choiceB == "3"
            puts "You successfully knock him out, and you get a medal for delivering the infamous german spy, Ludwig, to your superiors, who question Ludwig and gather vital intelligence!"
          else
            puts "You both stare at each other until he shoots you."
          end
     else
       puts "You froze, unable to pick a side, yet miraculously you survived unscathed. But you do pee your pants."
     end

# if ao == "2"

   end
