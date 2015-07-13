require 'water'

describe Water do

  it 'has not been hit on creation' do
    water = Water.new
    expect(water.hit?).to eq false
  end

  it 'can be shot' do
    subject.shoot
    expect(subject.hit?).to eq true
  end

  it 'can not be shot more than once' do
    subject.shoot
    expect { subject.shoot }.to raise_error 'You have already shot here'
  end

end
