require 'airport'
require 'plane'

describe Airport do

  describe '.land' do
    context 'airport has space' do
      it 'lets planes land at the airport' do
        plane = Plane.new
        expect{ subject.land(plane) }.to change(subject, :hanger).to include(plane)
      end
    end
    context 'airport is full' do
      it 'does not let planes land when airportis full' do
        plane = Plane.new
        Airport::DEFULT_CAPACITY.times { subject.land(plane) }
        expect{ subject.land(plane) }.to raise_error('Hanger is full')
      end
    end
  end

  describe 'set airport capacity' do
    it 'airport has a defult capacity' do
      expect(Airport.new().capacity).to eq Airport::DEFULT_CAPACITY
    end
    it 'lets you manually set airport capacity' do
      expect(Airport.new(15).capacity).to eq 15
    end
  end

  describe '.take_off' do
    it 'lets planes take of from the airport' do
      subject.hanger << Plane.new
      expect(subject.take_off).to be_a_kind_of(Plane)
    end
  end
end
