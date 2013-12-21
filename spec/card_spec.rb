require File.expand_path(File.dirname(__FILE__) + '/test_helper') 

describe Card do
  let(:card) {Card.new("AS")}

  it "should be Card class" do
    expect(card).to be_an_instance_of(Card)
  end

  it "card rank should be A" do
    expect(card.rank).to eq "A"
  end

  it "card suit should be S" do
    expect(card.suit).to eq "S"
  end

  it "card value should be 14" do
    expect(card.value).to eq 14
  end

  it "rank sould be invalid" do
    expect{Card.new("XS")}.to raise_error "Invalid rank"
  end

  it "suit should be invalid" do
    expect{Card.new("AX")}.to raise_error "Invalid suit"
  end

  it "suit should be invalid" do
    malformed = "Invalid card, card should has suit and rank. 
    Valid suits S, H, D, Ci.
    Valid ranks A, K, J, T, 9, 8, 7, 6, 5, 4, 3, 2"   

    expect{Card.new("")}.to raise_error malformed 
  end

  it "array should be" do
    expect(card.to_a).to eq ["A","S",14]
  end

  it "hash should be" do
    expect(card.to_h).to eq({rank: "A", suit: "S", value: 14})
  end
end
