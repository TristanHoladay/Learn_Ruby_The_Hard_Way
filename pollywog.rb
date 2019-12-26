module Ex25

  # This function will break up words for us.
  def Ex25.break_words(stuff)
    words = stuff.split(' ')
    return words # if you take off the words part of this line it won't return anything.
  end

  # Sorts the words.
  def Ex25.sort_words(words)
    return words.sort # sort is a mode in which the words are sorted alphabetically.
  end

  # Prints the first word after shifting it off.
  def Ex25.print_first_word(words)
    word = words.shift # shift is a mode that i think separates the first word from all the others.
    puts word
  end

  # Prints the last word after popping it off.
  def Ex25.print_last_word(words)
    word = words.pop # a mode that removes or separates the last word from the rest so you can return just it.
    puts word
  end

  # Takes in a full sentence and returns the sorted words.
  def Ex25.sort_sentence(sentence)
    words = ex25.break_words(sentence)
    return ex25.sort_words(words) # i'm not sure if the capitalization of the "e" matters.
  end

  # Prints the first and last words of the sentence.
  def Ex25.print_first_and_last(sentence)
    words = Ex25.break_words(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

  # Sorts the words then prints the first and last one.
  def Ex25.print_first_and_last_sorted(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
  end

end
