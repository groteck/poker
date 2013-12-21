module Interface
  def inspect
    name
  end

  def to_a
    [ranks, suits, name]
  end

  def to_h
    {ranks: ranks, suits: suits, name: name}
  end
end
