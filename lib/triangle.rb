
class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1,length2,length3)
    # @all=[]
    @length1=length1
    @length2=length2
    @length3=length3
    # @all << @length1
    # @all << @length2
    # @all << @length3
    # @x=@all[0]
    # @y=@all[1]
    # @z=@all[2]
  end 
  
  # def all_equal?(arr)
  #   arr.uniq.size <=1 
  # end 
  
  # def two_equal?(arr)
  #   @length1==@length2 || @length1==@length3 || @length2==@length3
  # end 
  
  def validator
    if @length1==0 && @length2==0 && @length3==0
      raise TraingleError
    end 
  end 
  
  def kind 
    validator
    
    # if @length1.positive?() && @length2.positive?() && @length3.positive?() && @length1+@length2>@length3 && @length2+@length3>@length1 && @length1+@length3>@length2 
       
    if @length1==@length2 || @length1==@length3 || @length2==@length3
    return :isosceles
    
    elsif @length1==@length2 && @@length2==@length3
      return :equilateral
  
    else 
      return :scalene
    end
  
  end 
 
  class TriangleError < StandardError
    # def message
    #   "you must enter valid length of each traingle"
    # end
  end

end
