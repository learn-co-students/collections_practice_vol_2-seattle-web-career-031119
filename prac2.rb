<<<<<<< HEAD
require "pry"

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

array1 = [
        {
            :first_name => "blake",
                 :motto => "Have a koala-ty day!"
        },
        {
            :first_name => "ashley",
                 :motto => "I dub thee, 'Lady Brett Ashley'."
        }
    ]
array2 = [
           {
             "blake" => {
                :awesomeness => 10,
                     :height => "74",
                  :last_name => "johnson"
            },
            "ashley" => {
                :awesomeness => 9,
                     :height => 60,
                  :last_name => "dubs"
            }
        }
    ]  
merge_data( array1 , array2)

=begin
[{:awesomeness=>10, 
  :first_name=>"blake", 
  :height=>"74", 
  :last_name=>"johnson", 
  :motto=>"Have a koala...}
  ,
  {:first_name=>"ashley", 
  :awesome
  :height=>60, 
  :last_name=>"dubs", 
  :motto=>"I dub thee, 'Lady Brett Ashley'."}
  ]
  
=end
  
=======















#[{:awesomeness=>10, :first_name=>"blake", :height=>"74", :last_name=>"johnson", :motto=>"Have a koala...:first_name=>"ashley", :height=>60, :last_name=>"dubs", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
>>>>>>> c79726d2eb8fc078d738b850cef8e6d1ea75f699
