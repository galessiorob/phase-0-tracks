#5.3 Pairing

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