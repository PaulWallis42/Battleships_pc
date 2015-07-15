require 'cell'

describe Cell do

  let(:ship) { double :ship, shoot: 'HIT' }

  it 'is empty on creation' do
    cell = Cell.new
    expect(cell.content).to eq nil
  end

  it 'can have content added' do
    subject.add_content :ship
    expect(subject.content).to eq :ship
  end

  it 'content can be shot' do
    subject.add_content ship
    expect(subject.shoot).to eq 'HIT'
  end

  it 'can not be hit more than once' do
    subject.add_content ship
    subject.shoot
    expect { subject.shoot }.to raise_error 'You have already shot here'
  end

end
