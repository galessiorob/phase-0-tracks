#Pseudocode
# Ask user what his name is and store in variable
#   If user is in vampire database, then user is a vampire
# Ask user for age and store in variable
# Ask user for birth year
# Compare age and year inputs
#   If they add up
#     Carry on to next question
#   Else
#     Probably a vampire
# Ask if user would like some garlic bread
#   If user refuses
#     Probably a vampire
#   Else
#     Carry on to next question
# Ask user if they'd like to enroll in health insurance
#   If yes
#     Carry on to next question
#   Else
#     Probably a vampire

#==========================================
#Driving Code

puts "What's your name?"
username = gets.chomp

puts "How old are you in years?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

puts "Would you like to have some garlic bread? Yes or No?"
garlicbread = gets.chomp

puts "Would you like to enroll in the company's insurance? Yes or No?"
insurance = gets.chomp


