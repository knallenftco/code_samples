class Dessert

  attr_reader :name
  attr_writer :calories

  def initialize(name, calories)
    @name=name
    @calories=calories
  end

  def healthy?
    if @calories<200
      return true
    end
  end

  def delicious?
    if @name==nil
      return false
    else
      return true
    end
  end

end


class JellyBean < Dessert
    attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name=name
    @calories=calories
    @flavor=flavor
  end

  def delicious?
    if @flavor=="black licorice"
      return false
    else
    return true
    end
  end

end
