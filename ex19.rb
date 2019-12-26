def cheese_and_crackers(cheese_count, boxes_of_crackers) #creating function and saying it has 2 arguments.
  puts "You have #{cheese_count} cheeses!" # a string giving value of 1 argument
  puts "You have #{boxes_of_crackers} boxes of crackers!" # a string stating the value of the other argument
  puts "Man that's enough for a party!" #strings just finishing off the function with words.
  puts "Get a blanket.\n"
end


puts "We can just give the function numbers directly:" #giving the function numbers for the arguments
cheese_and_crackers(20, 30)


puts "OR, we can use variables from our script:" # creating variables in the script with a value, then typing the variable names into the function's argument section
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)


puts "We can even do math inside too:" #the funtion' arguments are no math equations. that's cool
cheese_and_crackers(10 + 20, 5 + 6)


puts "And we can combine the two, variables and math:" # the arguments can be a combination of variables and numbers and euqations.
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
