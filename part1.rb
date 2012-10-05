def palindrome?(str)
@string=str.to_s.gsub(/\W+/,'').downcase
@string==@string.reverse
end


palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")
def count_words(str)
@word_hash=Hash.new()
str.to_s.downcase.scan(/\w+/) do |w|
if(@word_hash.has_key?(w))
  @word_hash[w]+=1
else
  @word_hash[w]=1
end
end
@word_hash.each {|key,value| puts "#{key} => #{value}"}
end



count_words("A man, a plan, a canal -- Panama")
count_words("I for an i")
count_words "Doo bee doo bee doo"
