require "./kata2"

describe "#chop"  do
  include Kata2

  before :all  do
    @array = [1,3,5,7,9,11,13]
  end

  it "returns -1 if array is empty" do
    expect(chop(0, [])).to eq(-1)
  end

  it "returns 0 for input of 1" do
    expect(chop(1, @array)).to eq(0)
  end

  it "returns 1 for input of 3" do
    expect(chop(3, @array)).to eq(1)
  end

  it "returns 2 for input of 5" do
    expect(chop(5, @array)).to eq(2)
  end

  it "returns 3 for input of 7" do
    expect(chop(7, @array)).to eq(3)
  end

  it "returns 4 for input of 9" do
    expect(chop(9, @array)).to eq(4)
  end

  it "returns 5 for input of 11" do
    expect(chop(11, @array)).to eq(5)
  end

  it "returns 6 for input of 13" do
    expect(chop(13, @array)).to eq(6)
  end
end