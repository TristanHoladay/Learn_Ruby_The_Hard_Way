puts "Give a number between 10 and 15."
print '> '
number = $stdin.gets.to_i

if number > 10 && number < 15
  puts "good"
else
  puts "reread instructions and supply number."
end
