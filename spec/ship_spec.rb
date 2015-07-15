require 'ship'

describe Ship do

  let(:ship) { Ship.new 3 }

  it 'can have a length' do
    expect(ship.length).to eq 3
  end

  it 'can be shot' do
    expect(ship.shoot).to eq 'HIT'
  end

  it 'can be shot more than once' do
    ship.shoot
    expect(ship.length).to eq 2
  end

  it 'can be sunk' do
    2.times { ship.shoot }
    expect(ship.shoot).to eq 'You have sunk a ship'
  end

end
