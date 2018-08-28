require "pry"

def nyc_pigeon_organizer(data)
  
  all_names = []
  data.each {|name,info| all_names=info.values.flatten.uniq}

  pidgeon_list = {}
  
  all_names.each do |names_of_pidgeons|
    pidgeon_list[names_of_pidgeons] ={  color: [], gender: [], lives: []}
 end
  
  data.each do |attributes, vals|
    vals.each do |bird_data, bird_data_value|
      all_names.each do |get_names|
        if bird_data_value.include?(get_names)
           pidgeon_list[get_names][attributes] << bird_data.to_s 
         
      end
     end
  
   end
    end
  pidgeon_list
  
end