#Class Rectangle calculates the perimeter of the given rectangle
class Rectangle
  def initialize (coordinate_top_left, coordinate_bottom_right)
    coordinate_top_right = Coordinate.new(coordinate_bottom_right.get_x, coordinate_top_left.get_y)
    @length = Line.new(coordinate_top_left, coordinate_top_right)
    @breadth = Line.new(coordinate_top_right, coordinate_bottom_right)
  end

  def perimeter
    2 * (@length.length + @breadth.length)
  end

  def area
    @length.length * @breadth.length
  end

  def self.square coordinate_top_left, side
    coordinate_bottom_right = Coordinate.new(coordinate_top_left.get_x+side, coordinate_top_left.get_y+side)
    Rectangle.new coordinate_top_left, coordinate_bottom_right

  end
end