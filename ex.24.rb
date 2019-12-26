puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# the <<END is a "heredoc". See the Studen Questions.
poem = <<END
\tTHE lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "--------------"
puts poem
puts "--------------"


five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates # if you take out this return line completely then it will return just the answer for the entire equation (i.e. the crates value) but not for each part of it.
end # if you take out just the "return" and not the other bit of line 26 then you get an error.


start_point = 10000
beans, jars, pickles = secret_formula(start_point) # you can use a different variable than the name in the function, the function will return a value for that variable spot, or in that particular order so it knows "this value goes with this variable because it's in this order"

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{pickles} crates."

start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)
# %s etc... is a c-style method of coding. not necessary but used.
