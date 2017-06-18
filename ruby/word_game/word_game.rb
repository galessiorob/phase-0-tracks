class Word_game
attr_accessor  :word, :answer

  def guess_word(x)
    @word = x.downcase
  end

  def guess_string(word)
    @answer = '_' * (word.length)

  end

end
