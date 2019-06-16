# your code goes here

def begins_with_r(array)
  tools = true
  array.each do |element|
    if element[0] != "r"
    tools = false
  end
  tools
end

def contain_a(array)
  array.select{|element| element.include?("a")}
end

def first_wa(array)
  array.find{|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.reject{|element| element.class !=String}
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select {|entry| entry if entry.has_value?("cool")}
end

def organize_schools(array)
  by_location = {}
  array.each do |school, location_hash|
    location = location_hash[:location]
  if by_location[location]
    by_location[location]<<school
  else
    by_location[location] == nil
    by_location[location] <<school
  end
end
by_location
end
