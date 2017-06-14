#Week 6 GPS 2.2

#Pseudocode:

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create hash
  # turn each item into a key for the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?] print each item with quantity
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: call list
  # turn new_item into a key, and quantity into a value
  # push to list
  # print list with item name and quantity
# output: return hash with added item and quantity of item

# Method to remove an item from the list
# input: item to be removed from list
# steps: delete an item from the hash (.delete)
# output: return hash without deleted item

# Method to update the quantity of an item
# input: enter item to be updated and quantity of item
# steps: override quantity for selected item
# output: return hash with updated quantity of item

# Method to print a list and make it look pretty
# input: hash of list
# steps: print each key and value in a string to be
  # better formatted
# output: print hash of list (in a pretty way)

#===========================================
#Driving code

#Create new list
def new_list (item)
  hash = {}
  list = item.split(',')
  list.each do |i|
    hash[i] = 1
  end
  p hash
end

x = new_list('carrots,apples,grapes')

#Add a new item or change the quantity of an existing one
def add_item (list,item,quantity)
  list[item] = quantity
end

add_item(x,'pears',2)
add_item(x,'apples',10)

#Delete item from list
def delete_item (list,item)
  list.delete(item)
end

delete_item(x,'pears')

#Print list in a readable way
def print_list (list)
  list.each { |item,quantity| puts "#{item} buy #{quantity}" }
end

print_list(x)


#========================================================
# Refactoring notes

#Deleted this method from driving code because method for adding a new item can be used for this purpose
#Change the quantity of an item
# def new_quantity (list,item,quantity)
#   list[item] = quantity
# end
# new_quantity(x,'apples',10)

#Changed ".each do" for {} structure to fit method into one line

#=========================================================
#Reflection

#This challenge tought me the importance of having a good pseudocode before coding anything, it really made a difference in our session and I really like the structure of having an input, steps and output section. More specifically it helped me (and my pair) check if our output was correct.

#For this specific case we chose to use arrays from the bigining because you can associate values to keys, so it makes everything easier.

#A method's return depends on the arguments it takes, its inner processes, and it returns the value of the last statement unless explicitly told to return something else.

#You can pass almost anything into a method as an argument, as long as the method takes them (eg. if the method takes 3 arguments, you can't pass 4 or 2). You can pass arrays, hashes, strings, integers, etc.

#To pass information between methods you can make method's 1 output be method's 2 argument and so on.

#Solidified concepts:
#How to pass arguments between methods
#Methods that work on hashes
#Making methods leaner and easier to read
#Pseudocoding with structure

#Still confusing:
#It is better to use classes, right? Even if you can pass arguments from one method to the next

