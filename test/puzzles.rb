class Puzzles

  def initialize
    @puzzle_hsh = [:riddle, :number_crunch,  ]
  end

  def riddle
    puts "When will water stop running down hill?"
    print '> '
    answer = $stdin.gets.lowercase.chomp

    if answer =~ /bottom/
      puts "You are wise."
    else
      puts "You have answered incorrectly."
      puts "You get one more chance."
      puts "What can point in every direction but can't get there by itself?"
    end

    print '> '
    second_answer = $stdin.gets.lowercase.chomp

    if second_answer =~ /finger/
      puts "You are wise."
    else
      puts "You have failed for the second time."
      puts "Spikes shoot out from the walls and ceiling and floor, covering every bit of the treasury,\n skewering your body like a kabob for the next adventurer to find."
      return 'death'
    end

  end

  def number_crunch
    puts "There are 5 dials enscribed with Egyptian numbers from 0-9."
    puts "Turn the dials to the correct combination or die!"
    puts "You have 10 tries."
    print '> '

    guess = $stdin.gets.chomp

    if guess.length !=5
      puts "That's not 5 digits"
      number_crunch
    end

    guess_arr = guess.to_s.split('')
    guesses = 1

    combination = "#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}#{rand(1..9)}"
    combo_arr = combination.to_s.split('')


    while guess != combination && guesses < 10 # runs till code == guess or once it hits 10 iterations moves on to the next if-else statement
      puts "You have chosen poorly. That's one less attempt left."

      if guess_arr & combo_arr != false
        puts "#{guess_arr & combo_arr} are the number\/s you guessed that are somewhere in the code."
      else
        puts "None of your numbers match."
      end

      if guess_arr[0] == combo_arr[0] # might be able to create a simple matching code that outputs the matching numbers
        puts "You got the first number right."
      else
        puts "First number is wrong."
      end

      if guess_arr[1] == combo_arr[1]
        puts "You got the second number right."
      else
        puts "Second number is wrong."
      end

      if guess_arr[2] == combo_arr[2]
        puts "You got the third number right."
      else
        puts "Third number is wrong."
      end

      if guess_arr[3] == combo_arr[3]
        puts "You got the fourth number right."
      else
        puts "The fourth number is wrong."
      end

      if guess_arr[4] == combo_arr[4]
        puts "You got the fifth number right."
      else
        puts "The fifth number is wrong."
      end

      guess_arr.clear
      guesses += 1
      print '> '
      guess = $stdin.gets.chomp # guess is changing each time but not the combination
      guess_arr = guess.to_s.split('')
    end

    if guess == combination
      puts "Eureka! You did it Indy."
    else
      return 'death'
    end

  end

  def pattern_match

    @numbers = [1, 2, 3, 4, 5, 6, 7, 8]

    @matches = {
                'Man' => 'a',
                'Horse' => 'b',
                'Sun' => 'c',
                'Wheat' => 'd'
               }

    @new_hsh = {}

    while @numbers.size != 0
      value = @numbers.sample(2)
      @numbers.delete_if { |x| value.include?(x) }
      puts "#{value}"
      puts "#{@numbers}"
      @matches

      @new_hsh[value] = value
      puts @new_hsh
    end


    x = (@new_hsh.merge(@matches)).select { | k, v | @new_hsh[k] = v if k.is_a?(Array) == false && if v.is_a?(Array) == true }

    p x



    puts "There are four drawings and eight numbered stones."
    puts "Each drawing is replicated on two stones."
    puts "You can pull one stone at a time from the wall to check the drawing on the inside face."
    puts "Place the matching stones together."
