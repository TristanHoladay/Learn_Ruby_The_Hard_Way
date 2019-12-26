people = 30
cars = 50
trucks = 15

a = cars > people
b = cars < people
if a
  puts "We should take the cars."
elsif b # in my mind the elsif function is just allowing you to condense putting multiple if else statements in one block.
  puts "We should not take the cars."
else
  puts "We can't decide."
end

if trucks > cars
  puts "That's too many trucks."
elsif trucks < cars
  puts "Maybe we could take the trucks."
else
  puts "We still can't decide."
end

if people > trucks
  puts "Alright, let's just take the trucks."
else
  puts "Fine, let's stay home then."
end

if people > trucks && cars < people
  puts "We're shit out of luck."
elsif people < trucks && cars > people
  puts "Great."
elsif people > trucks && cars > people
  puts "we'll use cars."
elsif people < trucks && cars < people
  puts "we'll use the trucks."
else
  puts "who knows!"
end
