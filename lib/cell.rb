class Cell

  attr_reader :content

  def initialize
    @content = nil
    @hit = false
  end

  def add_content content
    @content = content
  end

  def shoot
    fail 'You have already shot here' if hit?
    @hit = true
    @content.shoot
  end

  def hit?
    @hit
  end

end
