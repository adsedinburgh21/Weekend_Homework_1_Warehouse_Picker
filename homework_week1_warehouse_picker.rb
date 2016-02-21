  #  # For Question 1 & 2 - The Basic Versions only allow 1 item/bay to be returned at a time. Alternatively we could use the Loop Versions which would give the option to return only 1 item/bay or multiple items/bays depending on the number of inputs entered. (If we use the Loop Version we must change the test to return an array in assert_equal.)

# #1  #Basic Version:
def return_item(bay)
  return @warehouse[bay]
end

# #1  #Loop Version:
# def return_item(*bays)
#   items = []
#   for bay in bays
#     items << @warehouse[bay]
#   end
#   return items
# end


# #2  #Basic Version:
def return_bay(item)
  return @warehouse.key(item)
end

# #2  #Loop Version:
# def return_bay(*items)
#   bays = []
#   for item in items
#     bays << @warehouse.key(item)
#   end
#   return bays
# end


# #  #3: Return Multiple Items
def return_multi_items(*bays)
  items = []
  for bay in bays
    items << @warehouse[bay]
  end
  return items
end

# #  #3:Calculate number of bays seperating the bays in use
def number_of_bays_apart(*bays)
  array_of_bays=@warehouse.keys
  bays_in_use = []
  for bay in bays
    bays_in_use << array_of_bays.index(bay) #index position of bays
  end
  return bays_in_use.max - bays_in_use.min
end


# #   #4: Return Multiple Bays
def return_multi_bays(*items)
  bays = []
  for item in items
    bays << @warehouse.key(item)
  end
  return bays
end












