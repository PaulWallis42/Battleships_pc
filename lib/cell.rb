class Cell

  attr_reader :content

  def initialize content
    @content = content
  end

  def shoot
    @content.shoot
  end

end
