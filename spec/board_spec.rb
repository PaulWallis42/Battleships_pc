require 'board'

describe Board do

  let(:cell) { double :cell, shoot: 'HIT', add_content: true }

  it 'is empty on creation' do
    board = Board.new
    expect(board.content.length).to eq 0
  end

  it 'can have a cell added' do
    subject.add_cell cell
    expect(subject.content.length).to eq 1
  end

  it 'content can be shot' do
    subject.add_cell cell
    expect(subject.shoot).to eq 'HIT'
  end

  it 'can place a ship on a cell' do
    subject.add_cell cell
    expect(subject.place_ship :ship).to eq true
  end

end
