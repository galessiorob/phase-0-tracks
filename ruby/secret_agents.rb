# Encrypt method Pseudo code
#=============
# Prompt user input and store value in a variable
# For every character in the string (for index 0 to length of string)do the following
# If character is space
# do nothing
# Otherwise
# replace character with character [index + 1]

# Decrypt method Pseudo code
#=======
# Prompt user input and store value in a variable
# For every character in the string (for index 0 to length of string)do the following
# If character is space
# do nothing
# Otherwise
# replace character with character [index -1]


def encrypt(word)
  i=0
  new_word= ""
  while i< word.length
    if word[i]==" "
      new_word +=word[i]
      i +=1
    else
      new_word +=word[i].next[0]
      i +=1
    end
  end
  return new_word
end

#puts encrypt("ab cdz")

def decrypt (word)
  alphabets="abcdefghijklmnopqrstuvwxyz"
  i=0
  new_word= ""
  while i< word.length
    if word[i]==" "
      new_word +=word[i]
      i +=1
    else
      new_word +=alphabets[alphabets.index(word[i])-1]
      i +=1
    end
  end
  return new_word
end

#puts decrypt("ab cdz")

#print "Tests for encrypt method"

#p "abc"
#puts encrypt("abc")
#p "zed"
#puts encrypt("zed")

#print "Tests for decrypt method"
#p "bcd"
#puts decrypt("bcd")
#p "afe"
#puts decrypt("afe")

#========================================
#Nested Methods:
#print "Tests for nested methods: "
#puts (decrypt(encrypt("swordfish")))

#The above methods work in opposite ways and can be "nested" or embeded into one another to help cancel out the effect of the inner method.

#========================================
#Pseudocode for adding an interface

#Prompt user to enter the password they want to work with and then select if they want to decrypt or encrypt a password
  #If they want to decrypt
    #run decrypt method
    #print decrypted password
  #If they want to encrypt a password
    #run encrypt method
    #print encrypted password

#========================================
#Driver code

#Greet user and ask which method they want to use
puts "Hi! Please enter the password you want to work with"
password = gets.chomp

puts "Do you want to encrypt(e) or decrypt(d) it? Type e to encrypt or d to decrypt:"
action = gets.chomp

if action == "e"
  new_password = encrypt(password)
  print "Your encrypted password id #{new_password}"
else action == "d"
  new_password = decrypt(password)
  print "Your decrypted password id #{new_password}"
end



