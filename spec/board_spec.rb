require 'board'

describe Board do

  let(:cell) { double :cell, shoot: 'HIT'}

  it 'is empty on creation' do
    board = Board.new
    expect(board.content.length).to eq 0
  end

  it 'can have content added' do
    subject.add_content cell
    expect(subject.content.length).to eq 1
  end

  it 'content can be shot' do
    subject.add_content cell
    expect(subject.shoot).to eq 'HIT'
  end

end
