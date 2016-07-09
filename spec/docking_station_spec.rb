require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  describe '#dock' do
    it 'docks a bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.bikes).to include(bike)
    end

    it 'raises an error' do
      subject.capacity.times { subject.dock double(:bike) }
      expect { subject.dock(double(:bike)) }.to raise_error('There is no room to dock a bike')
    end
  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = double(:bike, broken?: false)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end

    #let(:bike) {double :bike}
    it 'raises bike is broken error' do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error('Bike is broken')
    end

  end
end
