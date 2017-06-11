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

# vowels = {
#   'a' => 'e',
#   'e' => 'i',
#   'i' => 'o',
#   'o' => 'u',
#   'u' => 'a'
# }

consonants = ['bcdfghjklmnpqrstvwxyz']

p "What's your real name?"
p user_name = (gets.chomp).to_s
p name1 = user_name.downcase

# def spy_name(name1)
#   for i in name1
#     if i.in vowels = true
# end

# VOWELS = %w(a e i o u)
SWAP_V = ['a', 'e', 'i', 'o','u']
SWAP_VR = SWAP_V.rotate 1

def vowel_adv(namestr)
  namestr.each_char.with_index do |char, i|
    index = SWAP_V.index char
    if index
      namestr[i] = SWAP_VR[index]
    end
  end
  namestr
end

p vowel_adv(name1)
