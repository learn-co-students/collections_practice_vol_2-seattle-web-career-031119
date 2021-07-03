# your code goes here
def begins_with_r(array)
  array.all?{|item| item.start_with?('r') }
end
  
def contain_a(array)
  result = []
  for item in array
    if item.include?('a')
      result << item
    end
  end
  result
end

def first_wa(array)
  array.select {|item| item.to_s.start_with?('wa')}.first
end

def remove_non_strings(array)
  array.select {|item| item.is_a?(String)}
end

def count_elements(array)
  result = []
  for obj in array.uniq
    obj[:count] = array.count(obj)
    result << obj
  end
  result
end

def merge_data(keys, data)
  result = []
  for key in keys
    result << data[0][key[:first_name]].merge(key)
  end
  result
end

def find_cool(array)
  array.select {|obj| obj[:temperature] == "cool"}
end

def organize_schools(schools)
  result = {}
  schools.each do |school, data|
    if(!result[data[:location]])
      result[data[:location]] = [];
    end
    result[data[:location]] << school
  end
  result
end
  
  
