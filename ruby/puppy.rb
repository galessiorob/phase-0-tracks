#6.1 Introduction to classes

# CLASS ------------------------
# Puppy

# CHARACTERISTICS ----------------
# Breed: varies
# Name: varies
# Color: varies
# Friendly: yes
# Coat: short/medium/long
# Volume: high/low

# BEHAVIOR -----------------------
# Bark
# Jump
# Fetch
# Roll Over
# Play dead

#================================================

class Puppy
end

#New instances
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
p spot.play_dead