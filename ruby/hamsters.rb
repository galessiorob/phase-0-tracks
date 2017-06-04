#Hamster program

#Variables

username = []
volumelevel = []
furcolor =[]
adoption = []
adoptionb = []
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

puts "What's #{username}'s fur color?"
furcolor = gets.chomp

puts "Is #{username} a good candidate for adoption, yes or no?"
adoption = gets.chomp
#Forcing a non-empty answer
while true
  if adoption.empty?
    puts "Please answer yes or no to available for adoption"
    adoption = gets.chomp
  else
    break
  end
end
#Forcing yes or no answers
  until (['Y','Yes','yes','y','N','No','no','n']).include? adoption
    puts "Please use yes or no to answer the question"
    adoption = gets.chomp
  end
#Changing answers to boolean
if
  adoption == ['Y','Yes','yes','y']
  adoptionb == TRUE
else
  adoption == ['N','No','no','n']
  adoptionb == FALSE
end


puts "What is #{username}'s estimated age in months?"
age = gets.chomp
  if age.empty?
    age = nil
  else
    age = age.to_i
  end

print "Thank you! You have just checked-in #{username} with the following data: \n
  Name: #{username}\n
  Volume Level: #{volumelevel}\n
  Fur color: #{furcolor}\n"

if age == nil
  print "Age: NA"
else
  print "\n Age: #{age} months"
end

if adoptionb == TRUE
  print "\n And #{username} is ready to be adopted"
elsif adoptionb == FALSE
  print "\n Unfortunately, #{username} can't be adopted yet."
end
