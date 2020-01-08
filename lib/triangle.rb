class Triangle
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind

    if @side_1 == @side_2 && @side_1 == @side_3
      return :equilateral
    elsif @side_1 >= @side_2 + @side_3 || @side_2 >= @side_1 + @side_3 || @side_3 >= @side_1 + @side_2
      raise TriangleError
    elsif @side_1 == @side_2 || @side_1 == @side_3
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
