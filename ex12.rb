print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."
# study drill
print "Please Input: "
file = gets.chomp.to_f
print "Thank you for inputting #{file}.\n"

print "Please enter the amount you paid for charitable contributions this year. "
amount = gets.chomp.to_f
print "Thank you. Your taxable income will be reduced by 10% of your charitable contributions."
reduction = amount * 0.10
print "Therefore you have saved #{reduction} from being counted towards your taxable income!"
