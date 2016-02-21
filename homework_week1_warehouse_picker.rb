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


# #  #3 & #5: Return Multiple Items
def return_multi_items(*bays)
  items = []
  for bay in bays
    items << @warehouse[bay]
  end
  return items
end

# #  #3 & #5: Calculate number of bays seperating the bays in use
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
# #  #5: I did not write any new functions for question 5 as the functions I created to answer question 3 also work to answer question 5. I have written new tests for question 5.


#  # #6
def ordered_bays(*items)
  bays_to_target = []
  unordered_index_of_bays = []
  bays_to_visit_in_order = []
  all_bays = @warehouse.keys               # => array of all keys
  for item in items
    bays_to_target << @warehouse.key(item)
  end
  for bay in bays_to_target
    unordered_index_of_bays << all_bays.index(bay)
  end
  ordered_index_of_bays_to_visit = unordered_index_of_bays.sort
  for individual_index in ordered_index_of_bays_to_visit
    bays_to_visit_in_order << all_bays[individual_index]
  end
  return bays_to_visit_in_order
end
