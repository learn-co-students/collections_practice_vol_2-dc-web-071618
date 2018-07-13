# your code goes here

def begins_with_r(array)
  array.all? do |word|
    word.downcase.chr == "r"
end
