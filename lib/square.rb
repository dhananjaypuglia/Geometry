#Class Square calculates the area and perimeter of the given square
class Square < Rectangle
  def initialize(coordinate_top_left, side)
    coordinate_bottom_right = Coordinate.new(coordinate_top_left.get_x+side, coordinate_top_left.get_y+side)
    super coordinate_top_left, coordinate_bottom_right
  end
end