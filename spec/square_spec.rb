require 'spec_helper'

describe Square do

  it 'should calculate the area of a square of side 3' do
    top_left_x = 0
    top_left_y = 0
    side = 3
    square = Rectangle.square(Coordinate.new(0, 0), side)
    expect(square.area).to eq(9)

  end
end