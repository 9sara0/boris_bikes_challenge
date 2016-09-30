require 'docking_station'
require 'support/shared_examples_for_bike_container'

describe DockingStation do

  it_behaves_like BikeContainer

  subject(:docking_station) { described_class.new }
  let(:bike) { double :bike }


  describe "#release_bike" do
    it "Releases a working bike" do
      allow(bike).to receive(:working?).and_return(true)
      docking_station.dock(bike)
      expect(docking_station.release_bike).to eq bike
    end

    it 'Raises an error releasing a broken bike' do
      allow(bike).to receive(:working?).and_return(false)
      docking_station.dock(bike)
      expect{docking_station.release_bike}.to raise_error 'No bikes available'
    end

    it "Raises an error when no bikes available" do
      expect{docking_station.release_bike}.to raise_error 'No bikes available'
    end
  end

end
