first, second, third, fourth, fifth = ARGV

x = first
y = second
c = third
d = fourth
e = fifth

puts "#{x}, then #{y}, then #{c}, then #{d}, then #{e}. That's what you said, correct?"
puts "Is there anything you'd like to add? "
answer = $stdin.gets.chomp
puts "Your final answer was #{answer}."
