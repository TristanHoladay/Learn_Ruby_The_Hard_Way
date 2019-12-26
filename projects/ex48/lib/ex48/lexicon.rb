class Lexicon
  def self.scan(string)
    new.scan(string)
  end

  def scan(string)
    @word_list = []

    words = string.split

    words.map do |w|
      key = find_key(w)
      [key, w]
    end
    # words.each do |w|
    #   @lexicon.values.each do |v|
    #     re = /\A#{Regexp.escape(w)}\z/i
    #     if v.any? { |s| s =~ re }
    #       key = @lexicon.key(v)
    #       tuple = (key + " ") + w
    #       scanned = tuple.scan(/\b\w+\b/)
    #       @word_list.push(scanned)
    #     end
    #   end
    # end

    # words.each do |i|
    #   convert_numbers(i)
    # end
    # puts "#{@word_list}"
    # @word_list
  end

  def find_key(word)
    find_word(word) || find_number(word) || "error"
  end

  def find_number(word)
    Integer(word)
    "number"
  rescue
    nil
  end

  def find_word(word)
    lexicon.find { |key, value|
      value.any? { |v| v == word }
    }.map { |k, v| k }
  rescue
    nil
  end

  def error(object)
    lexicon['error'] = object
    type_word = @lexicon.assoc('error')
    @word_list.push(type_word)
  end

  def convert_numbers(object)
    begin
      Integer(object)
      lexicon['number'] = object
      type_word = lexicon.assoc('number')
      @word_list.push(type_word)
    rescue
      return error(object)
    end
  end

  def lexicon
    { 'direction' => ["north", "south", "east", "west"],
                'verb' => ["go", "stop", "kill", "eat"],
                'stop' => ["the", "in", "a", "of", "from", "at", "it"],
                'noun' => ["door", "bear", "princess", "cabinet"],
                'number' => [nil],
                'error' => [nil]
               }
  end
end
