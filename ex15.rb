# Line 2 asks the user to give a filename to be used from the get go as the argument.
filename = ARGV.first

#Line 5 is assigning the command of open to the file the user gave and assigning that opened file state to the variable txt.
txt = open(filename)

#Line 8 is displaying the string of words calling and inserting the name of the file given.
puts "Here's your file #{filename}."
#Line 10 prints the txt variable with a command (as indicated by '.') and a function (what it should do) in this case to read (or display what's written). This has no parameters on it.
print txt.read
txt.close

#asking for the filename again with a gets.chomp command
print "Type the filename again: "
#assigning the filename to a new variable "file_again"
file_again = $stdin.gets.chomp
# assigning the opened state of the file_again variable to the txt_again variable.
txt_again = open(file_again)
# display the txt-again variable with a command and a function '.read'.
print txt_again.read
txt_again.close
