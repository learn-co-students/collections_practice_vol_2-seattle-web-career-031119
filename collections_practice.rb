def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
   array.find do |element| element[0,2] == "wa"
  end
end 

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  instances = []
  
  array.uniq.each do |element|
    element[:count] = array.count(element)
    instances.push(element)
  end
  
  return instances
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property,value|
      object[property] = value
    end
  end
end
  
def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end