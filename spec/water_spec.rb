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

end
