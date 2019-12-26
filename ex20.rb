input_file = ARGV.first # input file is the argument given

def print_all(f) #function print_all is taking f (which i think corresponds to the input file given)
  puts f.read # saying to dislay the whole f
end

def rewind(f) # rewind function for f, telling the script to go back to the beginning of the txt
  f.seek(0)
end

def print_a_line(line_count, f) # print_a_line function for f
  puts "#{line_count}, #{f.gets.chomp}" # it puts the line value your on, and then it takes what's on that line in f and displays it
end

current_file = open(input_file) # the opened form of the given file is assigned to a variable

puts "First let's print the whole file:\n"

print_all(current_file) # running the print all function with the variable that is the opened form of the inputed file

puts "Now let's rewind, kind of like a tape."

rewind(current_file) # running rewind function with the opened input file

puts "Let's print three lines:"

current_line = 1 # telling the script what line you're on and giving that value to a variable
print_a_line(current_line, current_file) # running the print a line function displaying that first variable and then what corresponds with that line

# originally it was current_line = current_line + 1, but doing the += does this: x += y ==> x = x + y
current_line += 1 # same thing as above however now we're taking the same variable name but we're saying this new version of it is the old version plus 1
print_a_line(current_line, current_file)

current_line += 1 # same again but now the old version of current line variable is 2, so the new version is 3
print_a_line(current_line, current_file)
