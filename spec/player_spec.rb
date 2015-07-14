require 'player'

describe Player do

  let(:board) { double :board, place_ship: true }
  let(:player) { Player.new }
  let(:opp_board) { double :opp_board, shoot: 'HIT'}

  it 'can be assigned a board' do
    subject.add_board :board
    expect(subject.board).to eq :board
  end

  it 'can place a ship on the board' do
    subject.add_board board
    expect(subject.place_ship :a1, :ship).to eq true
  end

  it 'can shoot at opposing player' do
    subject.add_board board
    subject.place_ship :a1, :ship
    expect(subject.shoot :a1, opp_board).to eq 'HIT'
  end

end
