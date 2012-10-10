class Dessert
attr_reader :name
attr_writer :calories
  def initialize(name, calories)
  @name=name
  @calories=calories
  end

  
  def healthy?
  if @calories<200
    #puts "Debug: Calories are #{@calories}"
    return true
    end
  end
  
  def delicious?
  if @name==nil
    #puts "Debug: #{@name} is empty"
    return false
  else
    #puts "Debug: #{@name} is a delicious dessert"
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

#kdessert=Dessert.new("brownie",197);
#adessert=JellyBean.new("jelly bean1",201,"mint");
#monkeydessert=JellyBean.new("jelly bean2",199,"black licorice");

#if (kdessert.healthy?)
#  puts "Dessert: #{kdessert.name} is less than 200 calories!"
#end
#if (kdessert.delicious?)
#  puts "Dessert: #{kdessert.name} is a delicious dessert!"
#end


#if (adessert.healthy?)
#  puts "Dessert: #{adessert.name} is less than 200 calories!"
#end
#if (adessert.delicious?)
#  puts "Dessert: #{adessert.name} is a delicious dessert!"
#  puts "Dessert: #{adessert.flavor} is a valid flavor!"
#end
#
#if (monkeydessert.healthy?)
#  puts "Dessert: #{monkeydessert.name} is less than 200 calories!"
#end
#if (monkeydessert.delicious?)
#   puts "Dessert: #{monkeydessert.name} is a delicious dessert!"
#   puts "Dessert: #{monkeydessert.flavor} is a valid flavor!"
#end

