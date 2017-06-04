#Hamster program

#Variables

username = []
volumelevel = []
furcolor =[]
adoption = []
age = []

#===================

#Driving code

puts "Hi! What this hamster's name?"
username = gets.chomp
while TRUE
  if username.empty?
    puts "Name the hamster!"
    username = gets.chomp
  else
    break
  end
end
puts "Welcome, #{username}!"

volumelevel= nil
puts "What's #{username}'s volume level from 1 to 10?"
volumelevel = gets.to_i

until volumelevel.between?(1,10) == TRUE
  print "Please enter a number from 1 to 10:"
  volumelevel = gets.to_i
end