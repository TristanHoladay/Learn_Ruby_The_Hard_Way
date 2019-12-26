@lexicon = { 'direction' => ["north", "south", "east", "west"],
            'verbs' => ["go", "stop", "kill", "eat"],
            'stop' => ["the", "a", "in", "of", "from", "at", "it"],
            'nouns' => ["door", "bear", "princess", "cabinet"],
            'numbers' => [nil],
            'error' => [nil]
           }

@word_list = []

string = "A"
words = string.split
words.each do |w|
  @lexicon.values.each do |v|
    re = /\A#{Regexp.escape(w)}\z/i
    any = v.any? { |s| s =~ re }
      if any == true
        key = @lexicon.key(v)
        tuple = (key + " ") + w
        scanned = tuple.scan(/\b\w+\b/)
        @word_list.push(scanned)
        words.delete(w)
      end
  end
end

puts "#{@word_list}"
