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

p search_array(arr, 56)

#Release 1: Calculate Fibonacci Numbers

fib_sequence = []

#========
#Driving code
p "Please type the Fibonacci sequence element you want to get: "
x = gets.chomp.to_i

# x = element - 2

def fib (x)
  y = x-2
fib_sequence = y.times.inject([0,1]) do |a, idx|
    a << a[-2] + a[-1]
end
p "Last element of your sequence is #{fib_sequence.max}"
end

#Verify the last element of the sequence for 100 elements to be 218922995834555169026

fib(100)





