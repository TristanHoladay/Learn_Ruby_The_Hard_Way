def arraynumbers(x)
  i = x
  numbers = []
  d = 0

  i.each do |num|
    numbers.push(num)
    t = numbers[d]
    puts "At the top i is #{numbers[t]}"
    b = numbers[t-1]

    puts "Numbers now: ", numbers
    if t == numbers[d] && d == 0 # YES!!!! it worked adding the if-statement get it to return the index right behind the newwest index added to the array. Praise GOD!
      puts "At the bottom is #{numbers[0]}"
    elsif t == numbers[d] && d != 0
      puts "At the bottom i is #{numbers[b]}"
    end
    d += 1
  end
end


arraynumbers((0..6))
