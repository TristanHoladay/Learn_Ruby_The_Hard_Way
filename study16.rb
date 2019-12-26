filename = ARGV.first

puts "Let's read what you wrote in #{filename}."
file = open(filename)
print file.read
file.close
