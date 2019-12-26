print "How old are you? " # by doing the print command w/ a space after the punctuation gets it start a new line and it allows the user to enter the answer then when the hit enter it reveals the next question on the next line.
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

print "Enter your 3 digit pass code. "
pass_code = gets.chomp # i wonder how to create it so that it gives you an error if the digits entered is greater than 3. My guess is writing a true or false check on the pass_code.
print "Your pass code is #{pass_code}. Thank You."

print "X is the number of pencils you have times students in the room.\n"
print "How many pencils do you have? "
pencils = gets.chomp.to_i
print "How man students are in the room including yourself? "
students = gets.chomp.to_i
x = pencils * students
print "X equals #{x}." # when run with decimals for pencils (12.5) or for students it cuts off the decimal. I wonder why.
