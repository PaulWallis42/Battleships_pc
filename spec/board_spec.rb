require 'board'

describe Board do

  let(:cell) { double :cell, shoot: 'HIT', add_content: true }

  it 'is empty on creation' do
    board = Board.new
    expect(board.content.length).to eq 0
  end

  it 'can have a cell added' do
    subject.add_cell :a1, cell
    expect(subject.content.length).to eq 1
  end

  it 'can have multiple cells added' do
    subject.add_cell :a1, cell
    subject.add_cell :a2, cell
    expect(subject.content.length).to eq 2
  end

  it 'content can be shot' do
    subject.add_cell :a1, cell
    expect(subject.shoot :a1).to eq 'HIT'
  end

  it 'can place a ship on a cell' do
    subject.add_cell :a1, cell
    expect(subject.place_ship :a1, :ship).to eq true
  end

end
