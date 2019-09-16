

Using the bracket method [] inserting the Keys names and since the element is located within an array using his index number to retrieve it ==> "BBQ"  
def second_supply_for_fourth_of_july(holiday_hash)
  # return the second element in the 4th of July array
  
   holiday_hash:
   {
    :winter => {
      :christmas => ["Lights", "Wreath", #"Balloon"],
      :new_years => ["Party Hats", #"Balloon"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"],
      #:columbus_day => ["Flags", "Parade Floats", "Italian Food"]
    },
    :spring => {
      :memorial_day => ["BBQ", #"Table cloth", "Grill"]
    }
  }
   holiday_hash[:summer][:fourth_of_july][1]
end





 By Using a low level iterator .each over the :winter hash I appended "Balloon" to :christmas and :new_years without hard coding
              
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
 
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply  
  end
end





By using the Shovel method I appended two new elements to the :spring hash key :memorial_day which are ["Table cloth", "Grill"]

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply    
end




1.Given as argument holiday_hash, season, holiday_name and a supply_array, using the bracket method I updated the holiday hash with a new key/value pair :columbus_day =>["Flags", "Parade Floats", "Italian Food"] to the :fall hash
2.I returned the updated holiday_hash at the last line

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   # remember to return the updated hash
  
  holiday_hash[season][holiday_name] = supply_array  
  holiday_hash
end                                                                                   




By using the .values method I retrieved all the values from the :winter hash and using the .flatten method I returned a new array of all the values in one-dimensional flattening of self.

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  holiday_hash[:winter].values.flatten 
end




1.Using (.each) to iterate over the holiday_hash 
2.Using string interpolation converting all the symbols keys into strings with (.to_s) method and using the (.capitalize) to upcase their first letters
3.Using (.each) to itirate over data
4.Creating an X variable and assigning it the value of holiday symbols converted into strings with (.to_s) and splited from underscore with (.split("_") ) & using high level iterator (.map) to collect and (.capitalize) evry element passed to the block 
5.Creating a Y variable to hold the value of supplies which I joined the strings elements with a comma separated (.join(", "))
6.Using string interpolation to return all the updated objects from the data by using the variables X and Y

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
 
  holiday_hash.each do |season, data| 
    puts "#{season.to_s}:".capitalize 
    data.each do |holidays, supplies|                                
      x = holidays.to_s.split("_").map {|w| w.capitalize}.join(" ")=> 
      y = supplies.join(", ")                                                              a         
      puts "  #{x}: #{y}"
    end                                                               
  end
end


1.I instanciated a new variable new_var that I set to an empty array 
2.Using (.each) I iterated over the holiday_hash by using the variables season and data in between the pipes.
3.From the data I had access to holiday and supplies using (.each) to iterate over 
4.Using an if statment and the enum method (.include?) passing in the argument "BBQ" and if true I would: 
5.Shovel all the holidays that have "BBQ" within their supplies
6.And finally I returned my new_arr at the last line of the code

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  new_arr = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
      if supplies.include?("BBQ")
       new_arr << holiday
        end
      end
    end
    new_arr
end







