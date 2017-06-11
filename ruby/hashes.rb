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

puts "Do you give your full authorization to access your house to take measures? Use True or False"
userinfo[:authorization] = (gets.chomp).upcase
if userinfo[:authorization] == "TRUE"
  userinfo[:authorization] = TRUE
else
  userinfo[:authorization] = FALSE
end

p userinfo



