class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

#==================================================
#Driving code

Puppy.new.fetch('ball')

