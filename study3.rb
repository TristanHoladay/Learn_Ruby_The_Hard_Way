plants, animals, foods, cars = ARGV

puts "What kind of plants do you like? "
plants = $stdin.gets.chomp
puts "What is your favorite animal? "
animals = $stdin.gets.chomp
puts "What food are you eating? "
foods = $stdin.gets.chomp
puts "What kind of car do you drive? "
cars = $stdin.gets.chomp

puts "You like #{plants}."
puts "#{animals} is your favorite animal?"
puts "I also love #{foods}!"
puts "I've heard that #{cars} are quite fast."
