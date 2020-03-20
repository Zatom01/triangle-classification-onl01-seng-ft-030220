
class Triangle
  attr_accessor :length1, :length2, :length3
  
  def initialize(length1,length2,length3)
    @all=[]
    @length1=length1
    @length2=length2
    @length3=length3
    @all << @length1
    @all << @length2
    @all << @length3
  end 
  
  def all_equal?
    @all.uniq.size <=1 
  end 
  
  def validator
    if (@length1==0 && @length2==0 && @length3==0) || (@length1.negative?() || @length2.negative?() || @length3.negative?() ) || (@length1+@length2 <@length3 || @length2+@length3 <@length1 || @length1+@length3 <@length2)
      
      return true
    end 
  end 
  
  def kind 
    
    if validator==true 
      raise TriangleError
    
    else
    
      if all_equal?
        return :equilateral
      
      elsif @length1==@length2 || @length2==@length3 || @length3==@length1
        return :isosceles
    
      else 
        :scalene
      end
    end 
  
  end 
 
  class TriangleError < StandardError
  end

end
