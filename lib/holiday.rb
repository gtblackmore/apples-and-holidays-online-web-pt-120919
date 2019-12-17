require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if holiday == :fourth_of_july
       return supply[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday_hash[:winter][:christmas] << "#{supply}"
      holiday_hash[:winter][:new_years] << "#{supply}"
    end
   holiday_hash 
  end   
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash.each do |season, holiday|
    if season == :spring
      holiday_hash[:spring][:memorial_day] = "#{supply}"
    end
   holiday_hash 
  end  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







