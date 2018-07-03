# your code goes here
require 'set'
require 'pry'

def begins_with_r(collection)
  collection.all?{|item| item[0] == "r"}
end

def contain_a(collection)
  collection.select{|item| item.include?('a')}
end

def first_wa(collection)
  collection.find{|item| item[0,2] == 'wa'}
end

def remove_non_strings(collection)
  collection.delete_if{|item| item != item.to_s}
end

def count_elements(collection)
  values_array = []
  collection.each do |item| 
    values_array << item[:name]
  end
  collection.each do |item| 
    item[:count] = values_array.count(item[:name])
  end
  collection.to_set.to_a
end

def merge_data(keys, data)
  merged_data = []
  for hash in data
    for name, value_hash in hash 
      merged_data << value_hash
    end
    # binding.pry
  end
  merged_data[0][:first_name] = keys[0][:first_name]
  merged_data[1][:first_name] = keys[1][:first_name]
  merged_data
end

def find_cool(data)
  cool_hashes = [] 
  for hash in data 
    for key, value in hash 
      if value == "cool"
        cool_hashes << hash
      end
    end
  end
  cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
  count = 0 
  for hash in schools 
    organized_schools[hash[1][:location]] = []
  end

  for hash in schools 
    organized_schools[hash[1][:location]] << hash[0]
  end
  
  organized_schools
end
  
  # let(:schools) {
  #   {
  #     "flatiron school bk" => {
  #       :location => "NYC"
  #     },
  #     "flatiron school" => {
  #       :location => "NYC"
  #     },
  #     "dev boot camp" => {
  #       :location => "SF"
  #     },
  #     "dev boot camp chicago" => {
  #       :location => "Chicago"
  #     },
  #     "general assembly" => {
  #       :location => "NYC"
  #     },
  #     "Hack Reactor" => {
  #       :location => "SF"
  #     }
  #   }
  # }
  # let(:organized_schools) {
  #   {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
  #   "SF"=>["dev boot camp", "Hack Reactor"],
  #   "Chicago"=>["dev boot camp chicago"]}
  # }


