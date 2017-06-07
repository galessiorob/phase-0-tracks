#5.3 Pairing
#Release 1
dog_breeds = ['collie','labrador','husky','spaniel']

husky = {
  coat: "thick",
  size: "medium",
  personality: "smart",
  color: "black and white"
}

dog_breeds.each do |dog|
  puts "I grew up with a #{dog}."
end

husky.each do |traits,value|
  puts "A husky has a #{traits} that is #{value}."
end

puts dog_breeds

dog_breeds.map! do |breed|
  breed.capitalize
end

puts dog_breeds

#Release 2
#Using documentation to add other methods that take blocks

array_one = [1,2,3,4,5,6]

hash_one = {
  one: 1,
  two: 2,
  three: 3,
  four: 4
}

#1. Deleting items that meet conditions

puts array_one

array_one.delete_if { |x| x%2 == 0 }

puts array_one

puts hash_one

hash_one.keep_if { |x,y| y%2 == 0}

puts hash_one

#