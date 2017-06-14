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

def new_list (items)
  hash = {}
  list = items.split(',')
  list.each do |i|
    hash[i] = 1
  end
  p hash
end

new_list('carrots,apples,grapes')
