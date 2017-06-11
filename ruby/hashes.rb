#Week 5 Release 2
#Pseudocode
#Ask user for name and store in a key
#Ask user for age and store in a key
#Ask user for number of children and store in a key
#Ask user for favorite color and store in a key
#Ask user true/false full authorization to access house store in a key

#==============================================
#Variables

userinfo = {}

#Keys:
  # name:
  # age:
  # children:
  # color:
  # decor_theme:
  # authorization:

#==============================================
#Driving code

puts "Please type your name"
userinfo[:name] = gets.chomp

puts "How old are you? Use digits"
userinfo[:age] = (gets.chomp).to_i

puts "How many children do you have? Use digits"
userinfo[:children] = (gets.chomp).to_i

puts "What's your favorite color?"
userinfo[:color] = gets.chomp

puts "What decor theme do you want?"
userinfo[:decor_theme] = gets.chomp

puts "Do you give your full authorization to access your house to take measures? Use True or False"
userinfo[:authorization] = (gets.chomp).upcase
if userinfo[:authorization] == "TRUE"
  userinfo[:authorization] = TRUE
else
  userinfo[:authorization] = FALSE
end

puts "These are the current answers:"
p userinfo

puts "Would you like to make any changes? Use Yes or No"
changes = gets.chomp

if changes == "Yes"
  puts "What answer would you like to change? Please use the right key."
  p value_change = (gets.chomp).to_sym
else
  p "Okay"
  end




