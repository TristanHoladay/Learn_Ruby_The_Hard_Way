module StoringNames

def store_name(filename, string)
  File.open(filename, "a+") do |file|
    file.puts(string)
  end
end

def read_names
  return [] unless File.exist?("names.txt")
  clean_file = File.read("names.txt").split("\n")
  clean_file.uniq
end

# def clean_names
#   read_names.uniq
# end

end
