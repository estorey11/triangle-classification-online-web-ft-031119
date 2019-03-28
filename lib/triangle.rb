class Triangle
  attr :sides
  
  def initialize(l1, l2, l3)
    @sides=[l1, l2, l3]
    @sides.sort!
  end
  
  def kind 
  end
  
  class TriangleError < StandardError
  end
  
end
