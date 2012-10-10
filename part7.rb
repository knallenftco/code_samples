class CartesianProduct
  include Enumerable
  attr_accessor :product
  attr_reader :seq1
  attr_reader :seq2
  def initialize(seq1,seq2)
    @seq1=seq1
#puts "#{@seq1}"
    @seq2=seq2
#    puts "#{@seq2}"
    @product=[]
  end

  def each
  @product=[]
  if(seq1.empty?||seq2.empty?)
#  puts "Debug: One of the sequences is empty!"  
  return false
  else
  seq1.each do |s1|
  seq2.each do |s2|
  @product<< "#{s1.to_s},#{s2.to_s}"
  end
  end
  end
#  puts "#{product}"
  return product
  end
end

c=CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect}

c=CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect}

#test=CartesianProduct.new
#my_s1=["a","b","c"]
#my_s2=[4,5]
#my_e=[]
#my_sym=[:e,:f]
#my_s=['cat','dog']
#test.each(my_s1,my_s2)
#test.each(my_s2,my_e)
#test.each(my_s2,my_s1)
#test.each(my_s1,my_sym)
#test.each(my_s2,my_s)

#test2=Array.new
#my_s3=["x","y","z"]
#my_s4=[10,20]
#my_s3.each do |e|
#  puts "#{e}"
#  end
