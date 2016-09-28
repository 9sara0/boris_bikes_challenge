require 'docking_station'


describe DockingStation do

  describe "#release_bike" do
    it "Releases a working bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "Raises an error when no bikes available" do
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end
  end

  describe "#dock" do

    it "docks a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bikes).to include bike
    end

    # assuming a max capacity of 20 bike
    it 'raises an error when full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

end
