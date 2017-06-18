class Word_game
attr_accessor  :word, :word_letters, :answer, :guesses, :guess

  def initialize
    @word = ""
    @answer = ""
    @guesses = 1
    @word_letters = []
    @letters_guessed = []
    @guess_count = 0
    @guesses = 1
    @game_over = false
  end


  def guess_word(x)
    @word = x.downcase
    @answer = '_' * (word.length)
    if word.length > 10
      @guesses = 5 + (word.length)
    else @guesses = 3 + (word.length)
    end
  @answer
  end



  # def guess_number(word)
  #   @guesses = 3 + (word.length)
  # end

  # def word_index(word,letter)
  #   guess_index = []
  #   @word_letters = word.split('')
  #   @word_letters.map.with_index do |char,i|
  #     if @word_letters[i] == letter
  #       guess_index << i
  #     end
  #   end
  #   guess_index
  # end

  # def guess_letter(letter)
  #   if @letters_guessed.index(letter) != nil
  #     p "You've already tried #{letter}."
  #     p @answer
  #     p " "
  #   elsif @word.include?(letter)
  #     guess_index = find_index(letter)
  #     guess_index.each do |i|
  #       @answer[i] = letter
  #     end
  #     @guess_count += 1
  #     p "You have guessed #{@guess_count} times out of #{@guess_limit} total alloted guesses."
  #     @letters_guessed << letter
  #     check_status
  #   elsif !answer.include?(letter)
  #     @game_over = false
  #     @guess_count += 1
  #     p "The letter #{letter} is not in the word."
  #     p "You have guessed #{@guess_count} times out of #{@guesses} total alloted guesses."
  #     @letters_guessed << letter
  #     check_status
  #   end
  # end

  # def guess_try(word,guess)
  #   @guess = word.include? guess
  # end

  # def guess_sub(word,guess)
  #   guess_index= []
#end



end
