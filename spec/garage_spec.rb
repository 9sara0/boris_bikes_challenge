require 'garage'
require 'support/shared_examples_for_bike_container'

describe Garage do
  it_behaves_like BikeContainer

  subject(:garage) { described_class.new }
  let(:bike) { double :bike }


  it "fixes broken bikes" do
    garage.receive_bike bike
    expect(bike).to receive :fix
    garage.fix_bike(bike)
  end

  describe "send_bike" do
    let(:station) { double :station }

    it "sendes a fixed bike back to its DockingStation" do
      expect(station).to receive(:dock)
      garage.send_bike(bike, station)
    end
  end


end
