class Word_game
attr_accessor  :word, :answer, :guesses, :guess

  def guess_word(x)
    @word = x.downcase
  end

  def guess_string(word)
    @answer = '_' * (word.length)
  end

  def guess_number(word)
    @guesses = 3 + (word.length)
  end

  def guess_try(word,guess)
    @guess = word.include? guess
  end

end
