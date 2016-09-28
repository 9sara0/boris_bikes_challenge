require 'docking_station'


describe DockingStation do

  subject(:docking_station) { described_class.new }
  let(:bike) { Bike.new }

  describe "initialization" do
    it 'default capacity' do
      expect(docking_station.capacity).to eq described_class::DEFAULT_CAPACITY
    end

    it 'has a variable capacity' do
      docking_station = described_class.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  describe "#release_bike" do
    it "Releases a working bike" do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it "Raises an error when no bikes available" do
      expect{docking_station.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do
    it "docks a bike" do
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.bikes).to include bike
    end

    # assuming a max capacity of 20 bike
    it 'raises an error when full' do
      docking_station.capacity.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

end
