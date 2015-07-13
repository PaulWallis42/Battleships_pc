class Board

  attr_reader :content

  def initialize
    @content = []
  end

  def add_content content
    @content << content
  end

  def shoot
    @content[0].shoot
  end

end
