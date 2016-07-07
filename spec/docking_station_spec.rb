require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'checks bike is working?' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  describe '#dock' do
    it 'docks a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to eq [bike]
    end
    it 'raises an error' do
      20.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error('There is no room to dock a bike')
    end
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises an error' do
      expect { subject.release_bike }.to raise_error('No bikes available')
    end
  end
end
