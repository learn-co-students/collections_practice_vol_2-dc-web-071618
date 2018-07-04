require 'pry'

def begins_with_r tools
        # FAILED ATTEMPTS--

        # if tools.all? do |tool|
        #   return true
        # end

        # tools.sort do |a, b|
        #   if a != "r"
        #     return false
        #   end
        # end

tools.each do |tool|
  if tool.slice(0) != "r"
    return false
  end
end
  return true
end


def contain_a array
array_a = []

  #  array.each { |word|
  #    if word.include? "a"
  #      array_a.push(word)
  #    end
  #   }
  # array_a

  array.select do |word|
    word.include? "a"
  end
end


def first_wa elements
  elements.find do |element|
    element.slice(0..1).include? "wa"
  end
end


def remove_non_strings array
  array.delete_if do |object| !object.is_a? (String) end
end


def count_elements hash
  array = []
  unique = hash.uniq
    i=0
    while i < unique.length
      hashed = {}
      hashed[:name] = unique[i].values.join('')
      hashed[:count] = hash.count do |element|
        element == unique[i]
      end
     array.push(hashed)
     i +=1
    end
  array
end

def merge_data (keys, data)
new_hash = {}
        # ATTEMPT -- (before seeing keys format)
        # keys.each do |key|
        #   hash = {}
        #   hash = data.values_at(key)[0]
        #   hash.merge!({:firstname => key})
        #   new_hash.merge!(hash)
        # end
  keys.each do |key|
    new_hash = key.merge!(data[0].values_at(key.values[0])[0])
  end
end

def find_cool array
  # array.each { |x|
    array.keep_if { |block| block.has_value?("cool")}
end

def organize_schools hash
  new_hash = {}
  array_v = hash.values.collect do |value|
     binding.pry
     value.values[0]
   end

  # hash.values.each do |value|
  #   array_v.push(value.values[0])
  # end

  array_v.uniq!.each do | v_u |
    new_hash[v_u] = hash.keys.select { |k| hash[k].values[0] == v_u }
    # binding.pry
  end
  new_hash
end
