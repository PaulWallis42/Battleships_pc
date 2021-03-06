class Game

  attr_reader :player1
  attr_reader :player2

  def initialize player1, player2
    @player1 = player1
    @player2 = player2
    @alternate = true
  end

  def turn
    @alternate ? @player1 : @player2
  end

  def p1_shoot coordinates, opp_board
    fail 'Not your turn' if @alternate == false
    result = @player1.shoot coordinates, opp_board
    @alternate = false
    if result == 'HIT'
      result
    elsif result == 'MISS'
      result
    elsif result == 'You have already shot here'
      result
    else
      winner
    end
  end

  def p2_shoot coordinates, opp_board
    fail 'Not your turn' if @alternate
    result = @player2.shoot coordinates, opp_board
    @alternate = true
    if result == 'HIT'
      result
    elsif result == 'MISS'
      result
    elsif result == 'You have already shot here'
      result
    else
      winner
    end
  end

  def winner
    'HIT!!! You have sunk all the ships you win'
  end

end
