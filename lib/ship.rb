class Ship

  def initialize
    @hit = false
  end

  def hit?
    @hit
  end

  def shoot
    fail 'You have already shot here' if hit?
    @hit = true
    'HIT'
  end

end
