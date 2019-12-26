# Functions do:
  # name pieces of code the way variables name strings
  # take arguments the way your scripts take ARGV
  # using 1 and 2, they let you make you own "mini-scriots" or "tiny commands"
# YOU CREATE FUNCTIONS BY USING THE WORD "def"
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this:
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one arguments
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def print_none()
  puts "I got nothin'."
end

print_two("Zed", "Shaw")
print_two_again("Zed", "Shaw")
print_one("First!")
print_none()
