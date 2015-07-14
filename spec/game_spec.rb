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

  it { expect(game).to respond_to(:p1_shoot).with(2).arguments }

  it 'alternates turns between the players' do
    game.p1_shoot :a1, opp_board
    expect(game.turn).to eq :Computer
  end

  it 'knows when there is a winner' do
    expect(game.p1_shoot :a1, opp_board).to eq 'You have won'
  end

end
