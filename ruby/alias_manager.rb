#Week 5 Manipulating Strings with Iteration
#Release 0

#==============================================
#Pseudocode
#Ask agent for name and save it as a string
#Split the string
  #Change the vowels to the next vowel
  #Change the consonants to the next consonant in the alphabet
#Join all the letters again

#=============================================
#Driving code

vowels = {
  'a' => 'e',
  'e' => 'i',
  'i' => 'o',
  'o' => 'u',
  'u' => 'a'
}

consonants = ['bcdfghjklmnpqrstvwxyz']

p "What's your real name?"
p user_name = (gets.chomp).to_s
p name1 = user_name.chars

def spy_name(user_name)
  p name1 = user_name.chars
end

