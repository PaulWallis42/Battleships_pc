require 'cell'

describe Cell do

  let(:ship) { double :ship, shoot: 'HIT' }

  it 'is empty on creation' do
    cell = Cell.new
    expect(cell.contents.length).to eq 0
  end

  it 'can have content added' do
    subject.add_content :ship
    expect(subject.contents).to eq [:ship]
  end

  it 'contents can be shot' do
    subject.add_content ship
    expect(subject.shoot).to eq 'HIT'
  end

end
