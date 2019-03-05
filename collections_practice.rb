 def begins_with_r(array)
 array.all? {|word| word.start_with?("r")}
    #Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
    #should return false if there's an element that does not begin with r (FAILED - 2)
end
def contain_a(array)
  #return all elements that contain the letter 'a'
  array.find_all { |x| x.include? "a"}
  #return array
end

def first_wa(array)
  array.find do |element|
    if element[0] == "w" && element[1] == "a"
      element
    end
  end
end

def remove_non_strings(array)
  #remove anything that's not a string from an array
  array.delete_if do |not_string|
    !(not_string.is_a? String)
  end
end

def count_elements(array)
  #count how many times something appears in an array
  array.group_by(&:itself).map do |key, value|
    key.merge({:count => value.length})
  end
end

def merge_data(key, data)
  #combines two nested data structures into one
  #key.merge(data)
  key.merge(data)
  #merged_data = key.concat(data)

  #array.concat(data)
end
def find_cool(array)
  #find all cool hashes
  if array[1].values[1] == "cool"
    [cool[1]]
  end
  #array.include?("cool")
end

def organize_schools(array)
  #organizes the schools by location

  array.each_key do |value|
    value.sort do |a, b|
      a <=> b
    end
  end
end
