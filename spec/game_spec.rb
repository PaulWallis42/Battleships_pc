require 'game'

describe Game do
  let(:paul) { double :paul, shoot: 'HIT' }
  let(:game) { Game.new paul, :Computer }
  let(:opp_board) { double :opp_board }

  it 'has two players on creation' do
    expect(game.player1).to eq paul
    expect(game.player2).to eq :Computer
  end

  it 'assigns a player a turn' do
    expect(game.turn).to eq paul
  end

  it 'allows players to shoot' do
    expect(game.p1_shoot opp_board).to eq 'HIT'
  end

  it 'alternates turns between the players' do
    game.p1_shoot opp_board
    expect(game.turn).to eq :Computer
  end

  xit 'knows when there is a winner' do
    game.p1_shoot
  end

end
