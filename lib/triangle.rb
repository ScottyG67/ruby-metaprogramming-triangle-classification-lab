class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize (side1,side2,side3)
    @side1 = side1.to_f
    @side2 = side2.to_f
    @side3 = side3.to_f
  end

  def kind
    side_array = [self.side1,self.side2,self.side3].sort
    if side_array[0]+side_array[1] <= side_array[2] or side_array[0] <=0
       raise TriangleError
    end
    if self.side1 == self.side2 && self.side2 == self.side3
      :equilateral
    elsif self.side1 == self.side2 or self.side2 == self.side3 or self.side1 == self.side3
      :isosceles
    elsif self.side1 != self.side2 and self.side2 != self.side3 and self.side1 != self.side3
      :scalene
    end
  end

  class TriangleError < StandardError
  end

end
