require 'bike'

describe Bike do
  it { is_expected.to respond_to :broken? }

  it { is_expected.to respond_to :report_broken }

  describe '#broken?' do
    it 'checks bike is broken?' do
      bike = Bike.new
      expect(bike).not_to be_broken
    end
    it 'checks the bike is broken' do
      bike = Bike.new
      bike.report_broken
      expect(bike).to be_broken
    end
  end
end
