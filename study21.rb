

# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

# what = "#{((30 + 5) * ((78 * 4) - ((90 * 2) * ((100 / 2) / 5))))}"
# puts "#{what.to_i}"      #it worked!!

def divide(a, b)
  puts "DIVIDING #{a.to_i} / #{b.to_i}"
  a.to_i / b.to_i
end

def multiply(a, b)
  puts "MULTIPLYING #{a.to_i} * #{b.to_i}"
  a.to_i * b.to_i
end

def add(a, b)
  puts "ADDING #{a.to_i} + #{b.to_i}"
  a.to_i + b.to_i # you can remove return and ruby will still give the answer to the equation but it's not explicitly clear to others reading i guess.
end


# whatwhatwhy = ((20 * 5)   /  (30 + 4))

multiplying = multiply(20, 5)
adding = add(30, 4)
whatwhatwhy = divide(multiplying, adding)
puts "#{whatwhatwhy.to_f}" # it worked, but the answer should be 2.9 and it spit out only 2.
