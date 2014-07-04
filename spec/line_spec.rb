require 'spec_helper'

describe Line do


  it 'should be equal to another line with the same coordinates swapped' do
    line1=Line.new(2, 3, 1, 2)
    line2=Line.new(1, 2, 2, 3)
    expect(line1).to eq(line2)

  end

  it 'should not be equal when the coordinates of line are different' do
    line1=Line.new(2, 3, 1, 2)
    line2=Line.new(1, 2, 2, 5)
    expect(line1).to_not eq(line2)
  end

  it 'should be equal to another line with the same coordinates' do
    line1=Line.new(2, 3, 1, 2)
    line2=Line.new(2, 3, 1, 2)
    expect(line1).to eq(line2)
  end
end