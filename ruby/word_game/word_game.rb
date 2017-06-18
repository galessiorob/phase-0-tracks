class Word_game
attr_accessor  :word, :word_letters, :answer, :guesses, :guess, :letters_guessed, :word_index

  def initialize
    @word = 'cupcake'
    @answer = ""
    @guesses = 1
    @word_letters = []
    @letters_guessed = []
    @guess_counter = 0
    @game_over = false
  end


  def guess_word(x)
    #@word = x.downcase
    @answer = '_' * (word.length)
    if word.length > 10
      @guesses = 5 + (word.length)
    else @guesses = 3 + (word.length)
    end
  @answer
  end


  def word_index(letter)
    guess_index = []
    @word.split('').map.with_index do |char,i|
      if @word[i] == letter
        guess_index << i
      end
    end
    guess_index
  end

def guess_letter(letter)
    if @letters_guessed.index(letter) != nil
        p 'You have already guessed with #{letter}, this does not count as a try'
        p @answer
    elsif @word.include?(letter)
      guess_index = word_index(letter)
      guess_index.each do |i|
        @answer[i] = letter
      end
      @letters_guessed << letter
      @guess_counter += 1
      p "You have #{@guesses - @guess_counter} guesses left"
      #check_status
    elsif !@word.include?(letter)
      #@game_over = false
      @guess_counter += 1
      p "The letter #{letter} is not in the word."
      p "You have #{@guesses - @guess_counter} guesses left"
      @letters_guessed << letter
      #check_status
    end
    @answer
  end







end
