# your code goes here
require 'pry'

def begins_with_r(array)
   array.each do |element|
       if element[0] != "r"
       return false
       end
   end
   true
end

def contain_a(array)
    new_array = []
    array.each do |item|
        if item.include?("a")
        new_array << item
        end
    end
    new_array
end

def first_wa(array)
    array.find do |item|
        if item[0..1] == "wa"
            return item
        end
    end
end

def remove_non_strings(array)
    array.delete_if do |item|
        item.class != String
        end
end


def count_elements(array)
    array.each_with_object(Hash.new(0)) {|a,b| b[a[:name]] += 1}.collect {|name,count| {:name=>name, :count=>count}}
    #binding.pry
end


def merge_data(data1, data2)
    new_array = []
    data1.each do |item|
        name = item[:first_name]
        new_array << item.merge(data2[0][name])
    end
    new_array
end


def find_cool(cool)
    array = []
    cool.each do |hash|
        hash.each do |k, v|
          if v == "cool"
              return array << hash
              #binding.pry
          end
        end
    end
end


def organize_schools(school)
    locations = {}
    school.each do |name,location|
    location.each do |k,v|
        locations[v] = []
        end
    end
    school.each do |name,location|
        location.each do |k,v|
        locations.keys.each do |city|
            if v == city
                locations[city] << name
                #binding.pry
            end
        end
        end
    end
    locations
end
