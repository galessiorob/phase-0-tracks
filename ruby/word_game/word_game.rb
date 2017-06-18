class Word_game
attr_accessor  :word, :word_letters, :answer, :guesses, :guess, :letters_guessed, :word_index

  def initialize
    @word = ""
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
      state
    elsif !@word.include?(letter)
      #@game_over = false
      @guess_counter += 1
      p "The letter #{letter} is not in the word."
      p "You have #{@guesses - @guess_counter} guesses left"
      @letters_guessed << letter
      state
    end
    @answer
  end

def state
    if @answer == @word
      @game_over = true
      p "You guessed it!\n The hidden word is #{@word}! Great job!"
    elsif @guess_counter >= @guesses
      @game_over = true
      p "You have used all your chances, the hidden word was #{@word}. Better luck next time!"
    end
  end
end

class Users
  attr_accessor :user_1, :user_2, :name

  def initialize(name)
    @name = name
  end
end


#================================================
#UI Code

puts "Welcome to -The Word Guesser- game! Please type the name of the player to guess the word"
name_1 = gets.chomp
user_1 = User.name(name_1)

puts "Please type the name of the player setting the hidden word"
name_2 = gets.chomp
user_2 = User.name(name_2)



