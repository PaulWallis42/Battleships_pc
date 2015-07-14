require 'cell'

describe Cell do

  let(:ship) { double :ship, shoot: 'HIT' }
  let(:cell) { Cell.new ship }

  it 'has content added on creation' do
    expect(cell.content).to eq ship
  end

  it 'content can be shot' do
    expect(cell.shoot).to eq 'HIT'
  end

end
