class Triangle
  attr :sides
  
  def initialize(l1, l2, l3)
    @sides=[l1, l2, l3]
    @sides.sort!
  end
  
  def kind 
    if is_valid?
      if @sides.uniq.length==1 
        :equilateral
      elsif @sides.uniq==2
        :isosceles
      else 
        :scalene
      end
    end
  end
  
  def is_valid?
    if @sides[0]+@sides[1]<=@sides[2]|| if sides.include?(0)
      raise TriangleError
    else
      true 
  end
  
  class TriangleError < StandardError
  end
  
end
