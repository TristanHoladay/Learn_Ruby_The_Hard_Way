# I'm learning about nested hashes

# i.e.

toy_line_hash = { "Potato Head Series" => { #top level key
  "toy_line" => "Potato Head Series", #nested key
  "toy_line_toys" => ["Mr. Potato Head", "Potato Bug"]}, #nested value
  "Adventure Time Series" => { # top level key
  "toy_line"  => "Adventure Time Series", #nested key
  "toy_line_toys" => ["Finn the Human", "Jake the Dog"]}} # nested value

  puts toy_line_hash["Adventure Time Series"]["toy_line_toys"]

  puts toy_line_hash["Adventure Time Series"]["toy_line_toys"][0]
  # what i'm learning and realizing is that you can assign arrays to keys. so if you want a hash that holds say states as keys that go down to regions and then to cities you can make arrays of the multiple values.

# LRHW guy made multiple hashes, sharing similar keys or values, and called them together to get a target.

regions = {
  "North" => {
    "states" => {
      "NH" => ["NH1", "NH2", "NH3"],
      "NY" => ["NY1", "NY2", "NY3"],
      "MA" => ["MA1", "MA2", "MA3"]}},
  "East" => {
    "states" => {
      "NC" => ["NC1", "NC2", "NC3"],
      "FL" => ["FL1", "FL2", "FL3"],
      "SC" => ["SC1", "SC2", "SC3"]}}}

      puts regions["North"]["states"]["NH"][1] # it worked!!!

grocery_store = {
  "FT" => "fruit",
  "CG" => "canned_goods",
  "PF" => "processed_foods"
  }

  @fruits = {
    "fruit" => {
        "ST" => {
          "soft" => ["berries", "bananas"]},
        "HD" => {
          "hard" => ["apples", "coconuts"]},
          #{}"medium" => ["x", "y"] # thought i needed this for line 52 to work, but it ended up not mattering
          }}



  puts "#{grocery_store}"
  puts "#{@fruits}"
  puts "#{@fruits["fruit"]["HD"]["hard"][0]}" # this finally worked
  puts "#{@fruits["fruit"]["ST"]["soft"][0]}" # this worked as well
  puts "#{@fruits[grocery_store["FT"]]}" # this worked; give me value of hash fruits attached to the key "FT" in hash grocery_store.
  puts "#{@fruits[grocery_store["FT"]]["HD"]}" # WORKED!!!!
        # give me value of fruits attached to "FT" of hash grocery_store, and then the value of "HD" attached to that first value found
  puts "#{@fruits[grocery_store["FT"]]["ST"]["soft"][1]}" # worked!!!
              # give me value d attached to value c attached to b that comes from the a hash attached to value 'a' from a different hash
  puts grocery_store == @fruits # can compare hashes

  # .keys method; hash.keys =[all keys associated with the hash (BUT NOT NESTED KEYS)] unless you do --> hash[top-level key].keys which = [nested keys within the top-level key given as param]
  puts grocery_store.keys

  # .has_key? returns true if the given key is in hash
  puts grocery_store.has_key?("FT")
  puts @fruits.has_key?("HD") # returned false
  puts @fruits["fruit"].has_key?("HD") # returned true

  # .values --> returns array with the values from hash
  puts grocery_store.values # worked
  puts @fruits.values # returned the nested hashes as values for "fruit"
  puts @fruits["fruit"]["HD"].values # returned the values in "HD"

  # .each iterates for each key in the hash
  grocery_store.each do |value| # key value pair is given
    p value # p is like puts and print but it is good for debugging b/c it inspects and shows more of what class something is
  end
  grocery_store.each do |k, v|
    p "this is the key: #{k}"
    p "This is the value: #{v}"
    p "*" * 10
  end

  # .empty? --> returns true if hash has no key-value pairs
  puts grocery_store.empty? # returns false b/c hash grocery_store has key-value pairs

  # .flaten --> returns array that is a one dimensional flattening of this hash
  puts grocery_store.flatten  # so returns and array in which the keys and values are all elements of the array
  puts @fruits["fruit"].flatten # gives the nested keys and their values as elements

  # .merge --> returns a NEW hash with the contents of both hashes
  a = grocery_store.merge(@fruits) # cool it worked even with the nested hashes
  puts a
  # .merge! --> adds other_hash to hsh, if no block given then duplicate keys are overwritten with values from other_hash.

  # .clear --> removes ALL key-value pairs from hash
  @b = grocery_store.clear
  puts @b
  puts "#{a}\n\n"  # returns the original value of a, not the version with the clear grocery_store
  def new_a(c = @b) # can pass the argument to it using the = operator
    new_a = @fruits.merge(c) # it worked!
    puts new_a
  end
  new_a

  # try_convert(obj) method --> tries to convert obj into hash using #to_hash method; returns nil if obj can't be converted
  e = {1=>2}.to_h
  puts e
  #d = {"1=>2"}.try_convert --> having issue with this
  p grocery_store.assoc("FT")

  # compare_by_identity
  h1 = {"a" => 100, "b" => 200, :c => "c"}
  puts h1["a"]
  puts h1.compare_by_identity
  puts h1.compare_by_identity?
  p h1["a"]
  puts h1[:c]

  # default(key=nil) --> returns the default value, the value that would be returned by hash if key did not exist in the hash.
  p h = Hash.new
  p h.default
  p h.default(2)

  p h = Hash.new("cat")
  p h.default
  p h.default(2)

  p h = Hash.new {|h,k| h[k] = k.to_i*10}
  p h.default
  p h.default(2)

  # defualt = obj --> sets default value, returned for a key that !exist in hash
  p h = {"a" => 100,"b" => 200}
  p h.default = "Go Fish"
  p h["a"]
  p h["z"]

  #.delete(key) ->value  --> deletes key-value pair and returns the value from hash whose key is == to key
  # .delete(key) {|key | block} -> value
  p h = {"a" => 100,"b" => 200}
  p h.delete("a")
  p h.delete("z")
  p h.delete("z") {|el| "#{el} not found"}

  # .each_value {|value | block } -> hash --> calls block once for each key in hash, passing value as the param
  # .each_value -> an_enumerator --> if no block given, enumerator returned
  p h = {"a" => 100,"b" => 200}
  h.each_value {|value| puts value}

  #.fetch(key [, default] ) -> obj --> returns value from hash for given key; if key !exist then keyerror exception or default if it i given
  #.fetch(key) {|key| block } ->
  p h = {"a" => 100,"b" => 200}
  p h.fetch("a")
  p h.fetch("z", "go fish") # if z not found "go fish" returned
  p h.fetch("z") {|el| "go fish, #{el}"}

  # .invert --> creates new hash using the hsh values as keys and the keys as values
  p h = {"n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0}
  p h.invert

  # .keep_if {|key, value| block} --> deletes every key-value pair from hsh for which block evaluates to false
  p h = {"n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0}
  p h.keep_if {|key, value| key => value != {"n" => 100}}


  # some possible problems with Hashes
      # collisions that occur when you have really big sets of data (?)
