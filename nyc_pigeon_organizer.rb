def nyc_pigeon_organizer(data)
  haxh = {}
   data.each do |birds, info|
    info.each do |attribute, names|
      names.each do |name|
        haxh[name] = {:color => [], :gender => [], :lives => []}  
      end
    end
  end
  data[:color].each do |attribute, names|
    names.each do |name|
      if data[:color][attribute].include?(name)
        haxh[name][:color] << attribute.to_s
      end
    end
  end
  data[:gender].each do |attribute, names|
    names.each do |name|
      if data[:gender][attribute].include?(name)
        haxh[name][:gender] << attribute.to_s
      end
    end
  end
  data[:lives].each do |attribute, names|
    names.each do |name|
      if data[:lives][attribute].include?(name)
        haxh[name][:lives] << attribute
      end
    end
  end
  haxh
end