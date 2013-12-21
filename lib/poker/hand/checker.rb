module Checker
  def royal_flush?
    values == [10, 11, 12, 13, 14] and flush?
  end

  def straight_flush?
    flush? and straight?
  end

  def four_of_a_kind?
    uniq_values = values.uniq 
    uniq_values.size == 2 and (values.count(uniq_values[0]) == 4 or values.count(uniq_values[1]) == 4)
  end

  def full_house?
    uniq_values = values.uniq 
    uniq_values.size == 2 and (values.count(uniq_values[0]) == 3 or values.count(uniq_values[1]) == 3)
  end

  def flush?
    suits.uniq.size == 1
  end

  def straight?
    range = (values.first..values.last)

    fixed_values = if values == [2,3,4,5,13]  
      range = (1..5)
      [1, 2, 3, 4, 5] 
    else
      values
    end 

    range.to_a == fixed_values
  end

  def three_of_a_kind?
    uniq_values = values.uniq 
    uniq_values.size == 2 and (values.count(uniq_values[0]) == 3 or values.count(uniq_values[1]) == 3)
  end

  def two_pairs?
    uniq_values = values.uniq 
    uniq_values.size == 3 and (values.count(uniq_values[0]) == 2 or values.count(uniq_values[1]) == 2) 
  end

  def pair?
    uniq_values = values.uniq 
    uniq_values.size == 4 and (
        values.count(uniq_values[0]) == 2 or 
        values.count(uniq_values[1]) == 2 or 
        values.count(uniq_values[2]) == 2 or 
        values.count(uniq_values[3]) == 2
    )
  end

  def name
    @hand_name ||= "Royal flush" if royal_flush?
    @hand_name ||= "Straight flush" if straight_flush?
    @hand_name ||= "Four of a kind" if four_of_a_kind?
    @hand_name ||= "Full house" if full_house?
    @hand_name ||= "Flush" if flush?
    @hand_name ||= "Straight" if straight?
    @hand_name ||= "Three of a kind" if three_of_a_kind?
    @hand_name ||= "Two pairs" if two_pairs?
    @hand_name ||= "Pair" if pair?
    @hand_name ||= "High card"
    @hand_name
  end
end
