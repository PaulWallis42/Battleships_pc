class Player

  attr_reader :board

  def initialize board
    @board = board
  end

  def place_ship ship
    @board.place_ship ship
  end

  def shoot opp_board
    opp_board.shoot
  end

end
