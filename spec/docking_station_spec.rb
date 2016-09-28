require 'docking_station'


describe DockingStation do

it "docks a bike" do
  bike = Bike.new
  subject.dock(bike)
  expect(subject.bike).to eq bike
end

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

end
