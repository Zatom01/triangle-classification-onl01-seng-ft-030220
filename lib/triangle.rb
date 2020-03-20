
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
    @x=@all[0]
    @y=@all[1]
    @z=@all[2]
  end 
  
  def all_equal?(arr)
    arr.uniq.size <=1 
  end 
  
  def two_equal?(arr)
    @length1==@length2 || @length1==@length3 || @length2==@length3
  end 
  
  
  
  def kind 
    
    if @x.positive?() && @y.positive?() && @z.positive?() && @x+@y>@z && @y+@z>@x && @x+@z>@y 
       
      if all_equal?(@all)
      return :equilateral
      
      elsif two_equal?(@all)
      return :isosceles
    
      else 
        return :scalene
      end
   
    else 
      # raise TraingleError
      begin
      
        raise TraingleError
      rescue TraingleError => error
          puts error.message
     
      end
    end 
  
  end 
 
  class TriangleError < StandardError
    def message
      "you must enter valid length of each traingle"
    end
    
    
  end
end 
    
    
  
 
  
  

