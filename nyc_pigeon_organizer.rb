def nyc_pigeon_organizer(data)
  # write your code here!
  list = {}
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if !list.has_key?(name)
          list[name] = {}
        end
        if !list[name].has_key?(key)
          list[name][key] = []
        end
        if !list[name][key].include?(k)
          list[name][key] << k.to_s
        end
      end
    end
  end
  list
end
