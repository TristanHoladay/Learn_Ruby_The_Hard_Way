# a while-loop runs until the expression is false, where as a if-statement only runs once
# use while-loops sparingly, for-loops are usually better
# review your while statements and make sure that the boolean  test will become false at some point (otherwise it runs forever)
# When in doubt, print out your test variable at the top and bottm of the while-loop to see what it's doing.

i = 0
numbers = []

while i < 6 #as long as i is less than 6 put string and push it to the array.
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1 # i = i+1
  puts "Numbers now: ", numbers # i think it is saying numbers are now this, now this now this etc...
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this 2 other ways?
numbers.each {|num| puts num} # array. each value make variable num put num 
