require "pry"

def count_elements(collection)
  hash = Hash.new(0)
  collection.each {|element|
    hash[element] = hash[element] + 1
  }
  puts hash
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
  binding.pry
end

collection = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]

#hash = {{:name=>"blake"}=>2, {:name=>"ashley"}=>1}

#array = [{:count=>2, :name=>"blake"}, {:count=>1, :name=>"ashley"}]

count_elements(collection)