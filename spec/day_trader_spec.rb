require_relative '../lib/day_trader'

describe "the day trader method" do
  it "should be return days for max gain" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
