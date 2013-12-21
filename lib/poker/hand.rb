require_relative 'hand/checker'
require_relative 'hand/interface'

class Hand
  include Checker
  include Interface

  def initialize(string_hand)
    @hand = string_hand.split.map {|string_card| Card.new(string_card)}
  end

  def ranks
    @hand.map {|card| card.rank}.sort
  end

  def suits
    @hand.map {|card| card.suit}.uniq.sort
  end

  def values
    @hand.map {|card| card.value}.sort
  end
end
