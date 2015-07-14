class Player

  attr_reader :name
  attr_reader :board

  def initialize name, board
    @name = name
    @board = board
  end

  def place_ship ship
    @board.place_ship ship
  end

  def shoot opp_board
    opp_board.shoot
  end

end
