class Triangle
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def equilateral?
   @side_one == @side_two && @side_two == @side_three
  end
  def isosceles?
    @side_one == @side_two && @side_two != @side_three || @side_one == @side_three && @side_three != @side_two || @side_two == @side_three && @side_three != @side_one
  end
  def scalene?
    @side_one != @side_two && @side_two != @side_three
  end
end
