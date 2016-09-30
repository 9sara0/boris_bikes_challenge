require 'van'
require 'support/shared_examples_for_bike_container'

describe Van do
  subject(:van) { described_class.new }
  let(:station) { double :station }
  let(:bike)    { double :bike }

  it_behaves_like BikeContainer



  describe "#transfer" do

    it "loads a bike" do
      expect(van).to receive(:load_bike).with(bike)
      allow(station).to receive(:dock).with(bike)
      van.transfer(bike, station)
    end

    context "unloads the bike" do

      it "unloads the bike from the van" do
        allow(station).to receive(:dock).with(bike)
        van.transfer(bike, station)
        expect(van).to be_empty
      end

      it "the bike should be received at its staion" do
        expect(station).to receive(:dock).with(bike)
        van.transfer(bike, station)
      end
    end

  end
end
