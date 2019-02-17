def begins_with_r(array)
  all_tf = []
  array.map do |str|
    all_tf << str.start_with?("r")
  end
  all_tf.each do |boo|
    if boo == false
      return false
    end
  end
  true
end

def contain_a(array)
  return_a = []
  array.each do |str|
    if str.include?('a')
      return_a << str
    end
  end
  return_a
end

def first_wa(array)
  array.each do |val|
    if val.to_s.start_with?('wa')
      return val
    end
  end
end

def remove_non_strings(array)
  return_a = []
  array.each do |val|
    if val == val.to_s
      return_a << val
    end
  end
  return_a
end

def count_elements(array)

  #this is really inefficient but it's the only way I could figure it out
  array_of_names = []
  array_of_count = []
  #Create an array with a copy of every name
  array.each do |hash|
    hash.each do |key, value|
      array_of_names << value
    end
  end
  #Create a second array that counts how many times the name is present
  array_of_names.each do |name|
    array_of_count << array_of_names.count(name)
  end
  #Combine the two arrays in the final array with nested hashes
  i = 0
  final_list = []
  array_of_names.each do |name|
    final_list << {:name => name, :count => array_of_count[i]}
    i += 1
  end
  final_list.uniq   #removes the duplicates
end

def merge_data(keys, data)

  new_output = []

  data.each do |data_hash|
    data_hash.each do |k_data, v_data|
      keys.each do |keys_hash|
        if keys_hash[:first_name] == k_data
          keys_hash.merge!(v_data)
        end
        new_output << keys_hash
      end
    end
  end
  new_output.uniq
end

def find_cool(array)
  output_a = []
  array.each do |hash|
    hash.each do |k, v|
      if v == "cool"
        output_a << hash
      end
    end
  end
  output_a
end

def organize_schools(schools)
  #turn location values into new keys
  locations_a =[]
  schools.each do |k_school, v_hash|
    v_hash.each do |k_tag, v_location|
      locations_a << v_location
    end
  end
  locations_a.uniq! #remove duplicates

  final_h = {}

  #sort by location gathered in last step
  locations_a.each do |location|
    description_h = []    #keep array of all descriptions that are in each location
    schools.each do |k_school, v_hash|
      v_hash.each do |k_tag, v_location|
        if location == v_location
          description_h << k_school
        end
      end
    end
    final_h[location] = description_h   #write to output hash with location as key, description list as value
  end
  final_h
end
