class Player

  attr_reader :board

  def add_board board
    @board = board
  end

  def place_ship coordinates, ship
    @board.place_ship coordinates, ship
  end

  def shoot coordinates, opp_board
    opp_board.shoot coordinates
  end

end
