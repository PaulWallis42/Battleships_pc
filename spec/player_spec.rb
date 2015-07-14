require 'player'

describe Player do

  let(:board) { double :board, place_ship: true }
  let(:player) { Player.new 'Paul', board}

  it 'can be assigned a name and a board' do
    expect(player.name).to eq 'Paul'
    expect(player.board).to eq board
  end

  it 'can place a ship on the board' do
    expect(player.place_ship :ship).to eq true
  end

end
