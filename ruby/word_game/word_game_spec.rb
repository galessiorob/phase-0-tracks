#Design a game

#Roles:
#User 1: sets the word to be guessed
#User 2: tries to guess the word

#Flow:
#Prompt user 1 to enter a word to be guessed
#   Store word in variable
#   Measure word length
#   Set result to be the word length in underscores ("_")
#   Set number of guesses to equal word length plus 3
#Ask user 2 to guess the word
#   Store guess in variable
#     If user's guess matches a letter(s) in the word
#       print instead of underscores in appropriate place(s)
#     If user's guess doesn't match a letter in the word
#       print "Wrong guess"
#   Subtract one from number of guesses

#   Keep prompting user  for guesses until
#     A. He/she guesses the entire word
#       Congratulate user
#     B. He/she runs out of guesses
#       Tell user he's a terrible guesser
#End game

#=================================================

require_relative 'word_game'

