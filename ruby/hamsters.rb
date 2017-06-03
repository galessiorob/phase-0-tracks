#Hamster program

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

volumelevel= nil # initialize the variable so you can invoke methods on it
puts "What's #{username}'s volume level from 1 to 10?"
volumelevel = gets.chomp
volumelevel.to_i
while TRUE
volumelevel.to_i
  if volumelevel.between?(1,10)
      break
  else
    print "Please enter a number from 1 to 10:"
    volumelevel = gets.chomp
    volumelevel.to_i
  end
end

puts "What's #{username}'s fur color?"
furcolor = gets.chomp

puts "Is #{username} a good candidate for adoption, yes or no?"
adoption = gets.chomp
  if adoption == ['Y','Yes','yes','y']
    adoption = TRUE
  elsif
    adoption == ['N','No','no','n']
    adoption = FALSE
  else
    puts "Is #{username} a good candidate for adoption, yes or no?"
    adoption = nil
  end

puts "What is #{username}'s estimated age?"
age = gets.chomp
  if age.empty?
    age = nil
  else
    age = age.to_i
  end




