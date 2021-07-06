def begins_with_r(tools)
  they_r_all_r = true
  counter = 0
  tools.each do |tool|
    if tool.start_with?('r') == false
      they_r_all_r = false
    end
  end
  they_r_all_r
end

def contain_a(string)
  a_list = []
  string.each do |word|
    a_list << word if word.downcase.include?('a') == true
  end
  a_list
end

def first_wa(array)
  array.each do |item|
    if item == item.to_s
      if item.start_with?('wa') == true
        return item
      end
    end
  end
  nil
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    new_array << item if item == item.to_s
  end
  new_array
end

def count_elements(array)
  new_array = []
  array.each do |item_in|
    included = false
    if new_array != []
      new_array.each do |item_out| 
        if item_in[:name] == item_out[:name]
          item_out[:count] += 1
          included = true
        end
      end
    end
    if included == false
      new_array << {:name => item_in[:name], :count => 1}
    end
  end
  new_array
end

def merge_data(keys, data)
  data[0].each.with_index do |hash, index|
    hash[1].each do |key, value|
      keys[index][key] = hash[1][key]
    end
  end
  keys
end

def find_cool(hash)
  cool_hashes = []
  hash.each do |hash|
    cool_hashes << hash if hash[:temperature] == ('cool')
  end
  cool_hashes
end

def organize_schools(schools)
  sorted_schools = {}
  schools.each do |school, city|
    if sorted_schools.find{|k, v| k.include?(city[:location])} == nil
      sorted_schools[city[:location]] = [school]
    else
      sorted_schools[city[:location]].push(school)
    end
  end
  sorted_schools
end
