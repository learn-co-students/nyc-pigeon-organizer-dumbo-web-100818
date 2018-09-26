def nyc_pigeon_organizer(data)
  # write your code here!
  hashy = {}

  data.each do |sym, stat|
    stat.each do |k, v|
      v.each do |x|
      if !hashy.has_key?(x)
        hashy[x] = {}
      end

      if !hashy[x].has_key?(sym)
        hashy[x][sym] = []
      end
      if !hashy[x][sym].include? (k)
        hashy[x][sym] << k.to_s

    end
    end
  end
  end
hashy
end
