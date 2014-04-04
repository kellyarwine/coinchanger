require "coinchanger"

describe "Coinchanger" do

  it "returns 1 when [1] is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(1)).to eq([1])
  end

  it "returns [1, 1] when 2 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(2)).to eq([1, 1])
  end

  it "returns [1, 1, 1] when 3 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(3)).to eq([1, 1, 1])
  end

  it "returns [5] when 5 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(5)).to eq([5])
  end

  it "returns [5,1] when 6 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(6)).to eq([5, 1])
  end

  it "returns [5, 1] when 6 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(6)).to eq([5, 1])
  end

  it "returns [10] when 10 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(10)).to eq([10])
  end

  it "returns [10, 10] when 20 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(20)).to eq([10, 10])
  end

  it "returns [10, 1] when 11 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(11)).to eq([10, 1])
  end

  it "returns [10, 5, 1] when 16 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(16)).to eq([10, 5, 1])
  end

  it "returns [25] when 25 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(25)).to eq([25])
  end

  it "returns [25, 1, 1] when 27 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(27)).to eq([25, 1, 1])
  end

  it "returns [25, 25] when 50 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(50)).to eq([25, 25])
  end

  it "returns [25, 25, 25, 10, 10, 1, 1, 1, 1] when 99 is input" do
    coinchanger = Coinchanger.new
    expect(coinchanger.make_change(99)).to eq([25, 25, 25, 10, 10, 1, 1, 1, 1])
  end



end