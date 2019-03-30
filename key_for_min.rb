# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require 'pry'
#the following one is not simple at all because I cannot find a way to get the first key/value pair. But the second one will be a very good solution
#def key_for_min_value(name_hash)
  #if name_hash=={}
  #  return nil
  #else
#values_array=[]
#  name_hash.each do |name,value|
#    values_array<<value
#    end
#  min_value=values_array[0]

  #values_array.each do |value|
#    if value<min_value
#      min_value=value
#    end
#  end

#  name_hash.each do |name,value|
#    if value==min_value
#      return name
#    end
#  end

#end
#end

def key_for_min_value(hash)
  lowest_key = nil
  lowest_value = nil
  hash.each do |k, v|
    if lowest_value == nil || v < lowest_value#at first I dont know how to compare 'nil' and values, but I should do like this, just try to assign the vale first no matter what
      lowest_value = v
      lowest_key = k
    end
  end
  lowest_key
end
