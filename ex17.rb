from_file, to_file = ARGV
"#{in_file = open(from_file)}, #{indata = in_file.read}, #{out_file = open(to_file, 'w')}, #{out_file.write(indata)}, #{out_file.close} #{in_file.close}"
# the original ex17 was multiple lines with words and questions etc... took out all the wording and condensed the commands into one line. It has to be recognized as a string and then each variable has to be in the formatter #{} for things to work. WHICH IT DID!!!
# cat and type do the same thing in the powershell btw.
# he asks in the study guide why we need to write out_file.close. I tried it without and nothing happened. From my reading it's important to close a file because if you don't you use up memory and more importantly variables (or something like that).
