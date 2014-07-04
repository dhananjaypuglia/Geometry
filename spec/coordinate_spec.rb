require 'spec_helper'

describe Coordinate do

  it 'should be equal when coodinates are same ' do
    coordinates1=Coordinate.new(1, 2)
    coordinates2=Coordinate.new(1, 2)
    expect(coordinates1).to eq(coordinates2)
  end

  it 'should not be equal when coodinates are different ' do
    coordinates1=Coordinate.new(1, 2)
    coordinates2=Coordinate.new(3, 2)
    expect(coordinates1).to_not eq(coordinates2)
  end

  it 'should point to the same value if coordinates are same' do
    coordinates1=Coordinate.new(1, 2)
    coordinates2=Coordinate.new(1, 2)
    value="hello"
    h={coordinates1=>value}
    expect(h[coordinates2]).to eq(value)
  end


end