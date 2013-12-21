class Card
  SUIT = ["S","H","D","C"]

  RANK_VALUES = {
    "A" => 14,
    "K" => 13,
    "Q" => 12,
    "J" => 11,
    "T" => 10,
    "9" => 9,
    "8" => 8,
    "7" => 7,
    "6" => 6,
    "5" => 5,
    "4" => 4,
    "3" => 3,
    "2" => 2,
  }

  def initialize(card_parameters)
    @card_parameters = card_parameters
    valid?
  end

  def rank
    @card_parameters[0]
  end
  
  def suit
    @card_parameters[1]
  end

  def value
    RANK_VALUES[rank]
  end

  def valid?
    malformed = "Invalid card, card should has suit and rank. 
    Valid suits S, H, D, Ci.
    Valid ranks A, K, J, T, 9, 8, 7, 6, 5, 4, 3, 2"   

    raise malformed unless @card_parameters.size == 2
    raise "Invalid rank" unless RANK_VALUES.has_key? rank
    raise "Invalid suit" unless SUIT.include? suit
  end

  def inspect
    "rank: #{rank}, suit: #{suit}, value: #{value}"
  end

  def to_a
    [rank,suit,value]
  end

  def to_h
    {rank: rank, suit: suit, value: value}
  end
end
