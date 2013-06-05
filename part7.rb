class CartesianProduct
  include Enumerable

  attr_reader :seq1
  attr_reader :seq2

  def initialize(seq1,seq2)
    @seq1=seq1
    @seq2=seq2
  end

  def each
    if(@seq1.empty?||@seq2.empty?)
      return false
    else
      @seq1.each do |s1|
        @seq2.each do |s2|
          yield [s1, s2]
        end
      end
    end
  end

end

#My testing
c=CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect}

c=CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect}

c=CartesianProduct.new([], [])
c.each { |elt| puts elt.inspect}

c=CartesianProduct.new([1,2,3,4], [1,2,3,4])
c.each { |elt| puts elt.inspect}
