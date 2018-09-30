require 'pry'


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |csl, info_hash|
    info_hash.each do |category, names_array|
      names_array.each do |name|
        if pigeon_list[name] == nil
           pigeon_list[name] = {csl => []}
           pigeon_list[name][csl] << category.to_s
        else
          if pigeon_list[name].include?(csl)
            pigeon_list[name][csl] << category.to_s
           
          else
          pigeon_list[name][csl] = []     
          pigeon_list[name][csl] << category.to_s
          end
        end
      end
    end
  end
  pigeon_list
end

#how do i make this dry code?

# iterate through the 'data' hash, find the pidgeon name and set that name as a key pointing to a hash, containing the 'csl' attriubte as a key pointing to an array. If the reference to a list of pidgeons includes a name, push that reference into the array. 