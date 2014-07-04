#To view a line as a pair of coordinates and compare them for equality
class Line
  def initialize(coordinate1, coordinate2)
    @coordinate1 = coordinate1
    @coordinate2 = coordinate2

  end

  def coordinates
    [@coordinate1, @coordinate2]
  end

  def equal?(line)
    self.object_id==line.object_id
  end
  def length
   Math.sqrt((@coordinate2.get_x-@coordinate1.get_x)**2+(@coordinate2.get_y-@coordinate1.get_y)**2)
  end
  def ==(line)
    coordinates==line.coordinates||[@coordinate2,@coordinate1]==line.coordinates
   # (@coordinate1.get_x == line.coordinates.get_x && @coordinate1.get_y == line.coordinates.get_y)
  end
end