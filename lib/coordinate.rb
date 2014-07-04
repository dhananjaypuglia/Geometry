#To store coordinates
class Coordinate
  def initialize(x, y)
    @x = x
    @y = y
  end

  def get
    [@x, @y]

  end

  def get_x
    @x
  end

  def get_y
    @y
  end


  def ==(coodinates)
    [@x, @y]==coodinates.get
  end

def eql?(other)
  self==other
end
  def hash
    [@x,@y].hash
  end
end