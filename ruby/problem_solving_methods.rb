#Pairing 5.6

#Release 0

#Pseudocode
#Define an array of random numbers
#Ask user for an integer
#Search and check if user input is within the array
  #If integer matches the array, return the index
  #Else output "no" or "nil"

#===============================
#Driving code

arr = [ 42, 56, 78, 98, 5]

def search_array (arr,number)
  hash = {}
  i = 0
  arr.each do |n|
    hash[i] = n
    i +=1
  end
  hash.key(number)
end

p search_array(arr, 4)




