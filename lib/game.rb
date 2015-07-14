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

  def p1_shoot opp_board
    fail 'Not your turn' if @alternate == false
    @alternate = false
    result = @player1.shoot opp_board
    return winner if result == 'HIT'
  end

  def p2_shoot opp_board
    fail 'Not your turn' if @alternate
    @alternate = true
    result = @player2.shoot opp_board
    return winner if result == 'HIT'
  end

  def winner
    'You have won'
  end

end
