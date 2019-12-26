

def arraynumbers(x, y, z)
  num = y
  i = x
  increment = z
  numbers = []

  while i < num
    puts "At the top i is #{i}"
    numbers.push(i)

    i += increment
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end
  puts "The numbers: "
  numbers.each {|num| puts num}
end


puts arraynumbers(6, 13, 2)


i = (0...6)
i.each do |numbers|
  puts "At the top i is #{numbers}"
