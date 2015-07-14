class Board

  attr_reader :content

  def initialize
    @content = {}
  end

  def add_cell coordinate, cell
    @content[coordinate] = cell
  end

  def shoot coordinate
    @content[coordinate].shoot
  end

end
