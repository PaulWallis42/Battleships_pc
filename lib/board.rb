class Board

  attr_reader :content

  def initialize
    @content = {}
  end

  def add_cell coordinates, cell
    @content[coordinates] = cell
  end

  def place_ship coordinates, ship
    @content[coordinates].add_content ship
  end

  def shoot coordinates
    @content[coordinates].shoot
  end

end
