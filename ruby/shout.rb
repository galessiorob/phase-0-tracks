module Shout
  def yell_angrily(words)
   p words + "!!!" + " :("
  end
   def yelling_happily(words)
    p "OMG! " + words + "!!! :)"
  end
end

class Karla
  include Shout
end

class Steven
  include Shout
end

#================================================

# p Shout.yell_angrily("Someone ate the last cookie")

# p Shout.yelling_happily("I just found a $20 bill in my pants")

karla = Karla.new
karla.yelling_happily("I just won the lottery")
karla.yell_angrily("I forgot to buy milk")

steven = Steven.new
steven.yell_angrily("I just stepped on dog poo")
steven.yelling_happily("This guacamole is amazing")