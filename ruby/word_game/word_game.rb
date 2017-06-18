class Word_game
attr_accessor  :word, :word_letters, :answer, :guesses, :guess


  def guess_word(x)
    @word = x.downcase
  end

  def guess_string(word)
    @answer = '_' * (word.length)
  end

  def guess_number(word)
    @guesses = 3 + (word.length)
  end

  def word_index(word,letter)
    guess_index = []
    @word_letters = (word.downcase).split('')
    @word_letters.map.with_index do |char,i|
      if @word_letters[i] == letter
        guess_index << i
      end
    end
    guess_index
  end

  # def guess_try(word,guess)
  #   @guess = word.include? guess
  # end

  # def guess_sub(word,guess)
  #   guess_index= []
#end



end
