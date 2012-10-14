class CartesianProduct
  include Enumerable
  attr_accessor :product
  attr_reader :seq1
  attr_reader :seq2
  def initialize(seq1,seq2)
    @seq1=seq1
    @seq2=seq2
  end
  def each
  @product=[]
  if(@seq1.empty?||@seq2.empty?)
  return false
  else
  @seq1.each do |s1|
  @seq2.each do |s2|
  @product<< [s1, s2]
  end
  end
  end
#puts "#{@product}"
#return @product
  @product.each {|elt| return elt.inspect}
  end
end

#c=CartesianProduct.new([:a,:b], [4,5])
#c.each { |elt| puts elt.inspect}
#
#c=CartesianProduct.new([:a,:b], [])
#c.each { |elt| puts elt.inspect}
#
#c=CartesianProduct.new([], [])
#c.each { |elt| puts elt.inspect}
#
#c=CartesianProduct.new([:c,:d,:e], [1,2])
#c.each { |elt| puts elt.inspect}
#
