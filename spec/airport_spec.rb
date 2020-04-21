require 'airport'
require 'plane'

describe Airport do

  it 'lets planes land at the airport' do
    plane = Plane.new
    expect{ subject.land(plane) }.to change(subject, :hanger).to include(plane)
  end

  it 'lets planes take of from the airport' do
    subject.hanger << Plane.new
    expect(subject.take_off).to be_a_kind_of(Plane)
  end
end
