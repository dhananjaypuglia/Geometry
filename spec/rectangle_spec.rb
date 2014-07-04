require 'spec_helper'

describe Rectangle do

  it 'should return the parameter for the coordinates (1,2) and (4,0)' do
    rectangle=Rectangle.new(1,2,4,0)
    expect(rectangle.perimeter).to eq(10)
  end
  it 'perimeter should be zero if the coordinates are same' do
    rectangle=Rectangle.new(1,2,1,2)
    expect(rectangle.perimeter).to eq(0)
  end
  it 'should return area if the coordinates are (1,2) and (4,0)' do
    rectangle=Rectangle.new(1,2,4,0)
    expect(rectangle.area).to eq(6)
  end
end