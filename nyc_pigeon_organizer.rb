require 'pry'
def nyc_pigeon_organizer(data)
 new_hash = {}
 data.each do |stats, sub_stats|
 	sub_stats.each do |individual_stat, pigeons_who_match|
 		pigeons_who_match.each do |pigeon|
 			new_hash[pigeon] = {} if !new_hash[pigeon]
 			new_hash[pigeon][stats] = [] if !new_hash[pigeon][stats]
 			new_hash[pigeon][stats] << individual_stat.to_s if data[stats][individual_stat].include?(pigeon) 
 		end
 	end
 end
new_hash
end