#Week 5 Manipulating Strings with Iteration
#Release 0

#==============================================
#Pseudocode
#Ask agent for name and save it as a string
#Standarize name in lower case to compare vowels and consonants
#Swap vowels:
  #Check each character of the string and match against set of vowels
    #If match, swap for the following vowel
    #If not, leave as is
#Swap consonants:
  #Check each caracter of the string amd match against set of consonants
    #If match, swap for the following vowel
    #If not, leave as is
#Capitalize first letter of each word again

#=============================================
#Driving code
#Hash to store spy names:
spy_base = {}
continue = nil

until continue == 'quit'

p "What's your real name?"
user_name = (gets.chomp).to_s
name1 = user_name.downcase

#Swap vowels method:

SWAP_V = ['a', 'e', 'i', 'o','u']
#Add rotation to the array to handle edge cases (ie u => a)
SWAP_VR = SWAP_V.rotate 1

def vowel_swap(namestr)
  namestr.each_char.with_index do |m, n|
    index = SWAP_V.index m
    if index
      namestr[n] = SWAP_VR[index]
    end
  end
  namestr
end

 name2 = vowel_swap(name1)

#Swap consonants method:

#Use the %w to turn the consonants into an array of character strings separated by commas
SWAP_C = %w(b c d f g h j k l m n p q r s t v w x y z)
#Add rotation to handle edge cases
SWAP_CR = SWAP_C.rotate 1


def cons_swap(namestr)
  namestr.each_char.with_index do |m, n|
    index = SWAP_C.index m
    if index
      namestr[n] = SWAP_CR[index]
    end
  end
  namestr
end

 name3 = cons_swap(name2)

#Capitalize name and last name again:
puts "Your spy name is:"
p spy_name = name3.split.map(&:capitalize).join(' ')

spy_base[user_name.to_sym] = spy_name

puts "Do you want to get a new spy name? If so, just hit enter, if not just type quit"
p continue = gets.chomp
end

p spy_base


