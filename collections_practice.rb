# your code goes here
require "pry"


def begins_with_r(array)
  array.select {|x| x[0] != "r"}.empty?
end

def contain_a(array)
  new_array = []
  array.select {|x|
    if x.include? "a"
      new_array << x
    end
  }
end

def first_wa(array)
  array.find {|x|
    x.to_s.start_with?("wa")
  }
end

def remove_non_strings(array)
  array.delete_if {|x|
    !x.is_a? String 
  }
end

def count_elements(collection)
  hash = Hash.new(0)
  collection.each {|element|
    hash[element] = hash[element] + 1
  }
  array = []
  hash.each {|element|
    hash_individual = {}
    hash_individual[:count] = element[1]
    element[0].each {|key, value|
      hash_individual[key] = value
    }
    array << hash_individual
    
  }
  array
end


def merge_data(array1, array2)
  i = 0
  array2.each {|element|
    element.each {|key, value|
      new_hash = {}
      value.each {|key, value|
        new_hash[key] = value
        }
      array1[i].merge!(new_hash)
      i += 1 
    }
  }
  array1
end

def find_cool(array)
  new_array = []
  array.each {|element|
    if element.has_value?("cool")
      new_array << element
    end
  }
  new_array
end

def organize_schools(hash)
  new_hash = {}
  hash.each {|key, value|
    key1 = key
    value.each {|key, value|
      if new_hash.has_key?(value)
        new_hash[value] << key1
      elsif !new_hash.has_key?(value)
        new_hash[value] = []
        new_hash[value] << key1
      end
    }
  }
  new_hash
end
