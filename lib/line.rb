class Line
  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  def coordinates
    [@x1, @y1, @x2, @y2]
  end

  def ==(line)
    coordinates==line.coordinates||[@x2, @y2, @x1, @y1]==line.coordinates
  end
end