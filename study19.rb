def tye_tye(amount_bones, amount_baby, amount_peeps)
  puts "Tye has #{amount_bones} bones."
  puts "Tye has #{amount_baby} baby."
  puts "Tye has #{amount_peeps} peeps."
  total_toys = "#{(amount_bones.to_i) + (amount_baby.to_i) + (amount_peeps.to_i)}"
  puts "Tye therefore has #{total_toys} play things."
end

tye_tye(5, 1, 3)


bo = "#{13 * 2}" # had to convert the variables in the function to .to_i because even though the sum worked for the first use of the function it didn't work for this use. It just put the numbers next to each other.
ba = "#{24 - 11}"
pe = "#{2^3}"
tye_tye(bo, ba, pe)


abo = 10
aba = 13
ap = 1200
tye_tye(abo + 100, aba + 30, ap + 12)

tye_tye(12 * 12, 70 / 7, 1 + 2 * 3)

puts "How many bones does Tye have? "
abones = $stdin.gets.chomp
puts "How many babies does Tye have? "
ababies = $stdin.gets.chomp
puts "How many peeps does Tye have? "
apeeps = $stdin.gets.chomp
tye_tye(abones, ababies, apeeps)

puts "Tye had 10 bones but he ate 7. How many bones does he have? "
newbones = $stdin.gets.chomp
anewbones = 3
if newbones == anewbones # not sure how to use this if function yet, when i ran the script it didn't do the puts, and then when i added def to the next set of strings it gave an error for line 55.
  puts "That's correct!"
end

puts "If Tye gets 1 baby every year and he's been alive for 10 years, how many babies has Tye gotten? "
totalbabies = $stdin.gets.chomp
atotalbabies = 10
def correct_babies()
  if totalbabies == atotalbabies
  puts "That's correct!"
end

puts "Tye loves his peeps. He has 10 peeps, 3 are blue, 4 are yellow, and 3 are orange. How many peeps does Tye have? "
totalpeeps = $stdin.gets.chomp
atotalpeeps = 10
if totalpeeps == atotalpeeps
  puts "You're on the money!"
end

tye_tye(anewbones, atotalbabies, atotalpeeps)
