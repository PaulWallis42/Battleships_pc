class Ship

  attr_reader :length

  def initialize length = 1
    @length = length
  end

  def shoot
    @length -=1
    sunk
  end

  def sunk
    if @length == 0
      return 'You have sunk a ship'
    else
      return 'HIT'
    end
  end

end
