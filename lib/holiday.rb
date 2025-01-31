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
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash 
    
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, supply|
      if supply.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







