def begins_with_r(tools)
  tools.all? do |tool|
    tool.start_with?('r')
  end
end

def contain_a(array)
  array.select do |word|
    word.include?('a')
  end
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select do |element|
    element.is_a? (String)
  end
end

def count_elements(array)
  array.uniq.each do |element|
    element[:count] = array.count(element)
  end
end
  
def merge_data(keys, data)                  #keys is an array of 2 hashes, data is an array of 1 hash
  new_array = []
  keys.each do |person|                     #keys is an array, person is a hash
    person.each do |key, name|              #name is "blake" or "ashley"
      stats = data[0][name]                 #data[0] is a hash, name is a key, value is a hash of stats
      new_array << person.merge(stats)
    end
  end
  new_array
end
  
def find_cool(cool)                         #cool is an array of 2 hashes
  cool_array = []
  cool.each do |person|                     #person is a hash 
    person.each do |key, value|
      if value == "cool"
        cool_array << person
      end
    end
  end
  cool_array
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |school, location|
    location.each do |key, city|
      if schools_by_location[city] == nil
        schools_by_location[city] = [school]
      else
        schools_by_location[city] << school
      end
    end
  end
  schools_by_location
end