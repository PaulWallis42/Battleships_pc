class Board

  attr_reader :content

  def initialize
    @content = []
  end

  def add_cell cell
    @content << cell
  end

  def place_ship ship
    @content[0].add_content ship
  end

  def shoot
    @content[0].shoot
  end

end
