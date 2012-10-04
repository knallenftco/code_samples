def palindrome?(str)
@string=str.to_s.gsub(/\W+/,'').downcase
@string==@string.reverse
end


#def count_words(str)
#@cnt=0
#@string=str.to_s.scan(/\w+/) do |word|
#     @cnt+=1
#end
#return @cnt
#end
palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")
def count_words(str)
@word_hash=Hash.new
@word=str.to_s.scan(/\b+/) do |b|
@word_hash[b].has_key?
end
puts @word_hash
end



count_words("A man, a plan, a canal -- Panama")
## => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
