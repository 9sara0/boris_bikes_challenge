require 'garage'
require 'support/shared_examples_for_bike_container'

describe Garage do
  it_behaves_like BikeContainer

  subject(:garage) { described_class.new }
  let(:bike)       { double :bike }

  it "fixes broken bikes" do
    garage.receive_bike bike
    expect(bike).to receive :fix
    garage.fix_bike(bike)
  end

  describe "send_bike" do
    let(:van)     { double :van }
    let(:station) { double :station }
    before(:each)    { garage.receive_bike bike }

    it "removes the bike form the garage" do
      allow(van).to receive(:transfer)
      garage.send_bike(bike, van, station)
      expect(garage).to be_empty
    end

    it "calls a van to take the bike to its station" do
      expect(van).to receive(:transfer).with(bike, station)
      garage.send_bike(bike, van, station)
    end
  end

end
