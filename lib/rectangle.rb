#Class Rectangle calculates the perimeter of the given rectangle
class Rectangle
  def initialize (top_left_x, top_left_y, bottom_right_x, bottom_right_y)
    coordinate1 = Coordinate.new(top_left_x, top_left_y)
    coordinate2 = Coordinate.new(bottom_right_x, top_left_y)
    coordinate3 = Coordinate.new(bottom_right_x, bottom_right_y)

    @line1 = Line.new(coordinate1, coordinate2)
    @line2 = Line.new(coordinate2, coordinate3)
  end

  def perimeter
    2 * (@line1.length + @line2.length)
  end

  def area
    @line1.length * @line2.length
  end
end