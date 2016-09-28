require 'docking_station'


describe DockingStation do

  subject(:docking_station) { described_class.new }
  let(:bike) { double :bike }

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
      allow(bike).to receive(:working?).and_return(true)
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it 'Raises an error releasing a broken bike' do
      allow(bike).to receive(:working?).and_return(false)
      docking_station.dock(bike)
      expect{docking_station.release_bike}.to raise_error 'Bike is broken'
    end

    it "Raises an error when no bikes available" do
      expect{docking_station.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do

    context 'accept returning a ' do
      it "working bike" do
        docking_station.dock(bike)
        expect(docking_station.bikes).to include bike
      end

      it 'broken bikes' do
        allow(bike).to receive(:report_broken).and_return(false)
        docking_station.dock(bike)
        expect(docking_station.bikes).to include bike
      end
    end

    # assuming a default capacity of 20 bike
    it 'raises an error when full' do
      docking_station.capacity.times { docking_station.dock(Bike.new) }
      expect { docking_station.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

end
