#my_words=['cars','for','four','potatoes','racs','Scar','creams','Scream']
#empty_words=[]
#cap_words=['CARS','FOR','SCAR']

def combine_anagrams(words)

#if (words.empty?)
#return
hash=Hash.new
sorted=[]

words.each do |w|
sorted=w.downcase.chars.sort.join
#puts "#{sorted}"

if (hash[sorted]==nil)
hash[sorted]= Array.new
hash[sorted]<<w;
else
hash[sorted]<<w;
end
#puts "#{w} :sorts to: #{sorted} :entered as: #{hash[sorted]}\n"
end

#puts "The hash contains Keys: #{hash.keys} and Values: #{hash.values}\n"
#puts"#{hash.values}"
return "#{hash.values}"
end

#combine_anagrams(my_words)
#combine_anagrams(empty_words)
#combine_anagrams(cap_words)
