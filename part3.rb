my_words=['cars','for','four','potatoes','racs','Scar','creams','Scream']

def combine_anagrams(words)
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

combine_anagrams(my_words)
