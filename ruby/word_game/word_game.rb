class Word_game
attr_accessor  :word, :word_letters, :answer, :guesses, :guess, :letters_guessed

  def initialize
    @word = 'cupcake'
    @answer = ""
    @guesses = 1
    @word_letters = []
    @letters_guessed = []
    @guess_count = 0
    @guesses = 1
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
  @word = 'cupcake'
  @answer = '_______'
  @letters_guessed = []
    if @word.include?(letter)
      guess_index = [1]
      guess_index.each do |i|
        @answer[i] = letter
      end
      guess_count = 1
     # p "You have #{@guesses - @guess_count} guesses left"
      @letters_guessed << letter
      #check_status
    else !@word.include?(letter)
      #@game_over = false
      guess_count = 1
      p "The letter #{letter} is not in the word."
      #p "You have guessed #{@guess_count} times out of #{@guesses} total alloted guesses."
      @letters_guessed << letter
      #check_status
    end
    @answer
  end
  # def guess_letter(letter)
  #   if @word.include?(letter)
  #     guess_index = word_index(letter)
  #     guess_index.each do |i|
  #       @answer[i] = letter
  #     end
  #     @guess_count += 1
  #    # p "You have #{@guesses - @guess_count} guesses left"
  #     @letters_guessed << letter
  #     #check_status
  #   else !@word.include?(letter)
  #     #@game_over = false
  #     @guess_count += 1
  #     p "The letter #{letter} is not in the word."
  #     #p "You have guessed #{@guess_count} times out of #{@guesses} total alloted guesses."
  #     @letters_guessed << letter
  #     #check_status
  #   end





end
