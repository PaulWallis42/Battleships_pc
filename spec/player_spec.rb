require 'player'

describe Player do

  let(:board) { double :board, place_ship: true }
  let(:player) { Player.new board }
  let(:opp_board) { double :opp_board, shoot: 'HIT'}

  it 'can be assigned a name and a board' do
    expect(player.board).to eq board
  end

  it 'can place a ship on the board' do
    expect(player.place_ship :ship).to eq true
  end

  it 'can shoot at opposing player' do
    player.place_ship :ship
    expect(player.shoot opp_board).to eq 'HIT'
  end

end
