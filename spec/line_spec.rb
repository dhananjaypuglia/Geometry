require 'spec_helper'

describe Line do


  it 'should be equal to another line with the same coordinates swapped' do
    line1=Line.new(Coordinate.new(1, 2), Coordinate.new(2, 3))
    line2=Line.new(Coordinate.new(2, 3), Coordinate.new(1, 2))
    expect(line1).to eq(line2)

  end

  it 'should not be equal when the coordinates of line are different' do
    line1=Line.new(Coordinate.new(1, 2), Coordinate.new(2, 5))
    line2=Line.new(Coordinate.new(2, 3), Coordinate.new(1, 2))
    expect(line1).to_not eq(line2)
  end

  it 'should be equal to another line with the same coordinates' do
    line1=Line.new(Coordinate.new(1, 2), Coordinate.new(2, 3))
    line2=Line.new(Coordinate.new(1, 2), Coordinate.new(2, 3))
    expect(line1).to eq(line2)
  end

  it 'should be equal if the objects are equal' do
    line1=Line.new(Coordinate.new(1, 2), Coordinate.new(2, 3))
    expect(line1.equal?(line1)).to eq(true)

  end

  it 'should return the length for the coordinates 1,2 and 5,2' do
    line1 = Line.new(Coordinate.new(1,2), Coordinate.new(5,2))
    expect(line1.length).to eq(4)
  end
end