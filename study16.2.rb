filename = ARGV.first # you get the file being used

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN." # by hitting return it goes on to the next line, if you hit ctrl-c i bet that closes everything right there.
# when i tried the ctrl-c it gave description that line 7 (the .gets) interrupts and so it stops running the script.
$stdin.gets

puts "Opening the file..."
target = open(filename, 'w') #assigning the opened file with a write only function to the variable "target"

puts "Truncating the file. Goodbye!"
target.truncate(0) #truncates (erases) the opened file all the way to the beginning

puts "Now I'm going to ask you for three lines."

print "Line 1: " # we get 3 lines of input from the user set to output each on a new line
line1 = $stdin.gets.chomp
print "Line 2: "
line2 = $stdin.gets.chomp
print "Line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write("#{line1}, \n#{line2}, \n#{line3}")

puts "And finally, we close it."
target.close
