module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "OMG! " + words + "!!! :)"
  end

end

#================================================

p Shout.yell_angrily("Someone ate the last cookie")

p Shout.yelling_happily("I just found a $20 bill in my pants")