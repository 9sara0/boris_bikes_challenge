require 'bike'
describe Bike do
  subject(:bike) { described_class.new }

  describe "upon initialization" do
    it 'is always working' do
      expect(bike).to be_working
    end
  end

  it { is_expected.to respond_to :working? }

  it 'can be reported as a broken bike' do
    bike.report_broken
    expect(bike).not_to be_working
  end
end
