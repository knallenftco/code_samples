
#test_values=['I contain FOUR words', 'Two words']
#puts test_values
test_values=['anana', 'naan', 'foo', 12321, 'Cain:a maniac']

def palindrome?(str)
@string=str.to_s.gsub(/\W+/,'').downcase
@string==@string.reverse
end

#test_values.each do |str|
#puts str
#answer=palindrome?(str)
#puts answer
#end


def count_words(str)
@cnt=0
@string=str.to_s.scan(/\w+/) do |word|
     @cnt+=1
end
return @cnt
end

test_values.each do |str|
puts str
answer=count_words(str)
puts answer
end



