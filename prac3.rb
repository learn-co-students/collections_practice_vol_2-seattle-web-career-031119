def organize_schools(hash)
  new_hash = Hash.new(0)
  hash.each {|key, value|
    key1 = key
    value.each {|key, value|
      if new_hash.has_key?(value)
        new_hash[value] << key1
      elsif !new_hash.has_key(value)
        new_hash[value] = []
        new_hash[value] << key1
      end
    }
  }
end


hash = {hello: 5, what: 6}

hash[:hi] = []
hash[:hi] << 6

puts hash


# {
#    {"NYC"=>["flatiron school bk", "flatiron school", "general assembly"],
#     "SF"=>["dev boot camp", "Hack Reactor"],
#     "Chicago"=>["dev boot camp chicago"]}
#  }