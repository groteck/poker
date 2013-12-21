require File.expand_path(File.dirname(__FILE__) + '/test_helper') 

describe Hand do
  let(:hand) {Hand.new("AS KS QS JS TS")}

  it "should be Hand class" do
    expect(hand).to be_an_instance_of(Hand)
  end

  it "ranks should be ['A', 'K', 'Q', 'J', 'T']" do
    expect(hand.ranks).to eq ['A', 'K', 'Q', 'J', 'T'].sort
  end

  it "suits should be S and uniq" do
    expect(hand.suits).to eq ["S"]
  end

  it "suits should be S and uniq" do
    tow_suits_hand = Hand.new("AS KS QC JS TS")
    expect(tow_suits_hand.suits).to eq ["S", "C"].sort
  end

  it "values should be [14, 13, 12, 11, 10]" do
    expect(hand.values).to eq [14, 13, 12, 11, 10].sort
  end
  
  it "#royal_flush? should return true" do
    expect(hand.royal_flush?).to be true
  end

  it "#straight_flush? should return true" do
    expect(hand.straight_flush?).to be true
  end

  it "#four_of_a_kind? should return false" do
    expect(hand.four_of_a_kind?).to be false
  end

  it "#full_house? should return false" do
    expect(hand.full_house?).to be false
  end

  it "#flush? should return true" do
    expect(hand.flush?).to be true
  end

  it "#straight? should return true" do
    expect(hand.straight?).to be true
  end

  it "#three_of_a_kind? should return false" do
    expect(hand.three_of_a_kind?).to be false
  end

  it "#two_pairs? should return false" do
    expect(hand.two_pairs?).to be false
  end

  it "#pair? should return false" do
    expect(hand.pair?).to be false
  end

  it "#name should be Royal flush" do
    expect(hand.name).to eq "Royal flush"
  end
end
