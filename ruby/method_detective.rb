# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".scan(/.{2}|.+/).join("o")
p "zom".insert(1,"o")
# => “zoom”


p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".insert 0, "the usual "
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

a = "The mystery of the missing first letter"
range_end = a.length - 1
p a.slice!(1..range_end)
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122
# What is the significance of the number 122 in relation to the character z? It's the number from the ASCII standard associated to z, aka the encoding the number for this letter.

p "How many times does the letter 'a' appear in this string?".count("a")
# => 4

