require "spec_helper"

describe Hike do
  it { should belong_to :region }
  it { should have_and_belong_to_many :features }
  it { should have_and_belong_to_many :landmarks }
  it { should validate_uniqueness_of :name}

  describe '#get_zip' do
    it 'returns the zip code for the hike trail head' do
      hike = Hike.create(name: "test hike", latitude: '45.54277', longitude: '-122.23769')
      expect(hike.get_zip).to eq("97019")
    end
  end

  describe "#weather" do
    it "returns the current weather observation" do
      hike = Hike.create(name: "test hike", latitude: '45.54277', longitude: '-122.23769')
      expect(hike.weather).to be_a(String)
    end
  end

  describe "#forecast" do
    it "returns the current weather forecast" do
      hike = Hike.create(name: "test hike", latitude: '45.54277', longitude: '-122.23769')
      expect(hike.forecast).to be_a(Array)
    end
  end

end

describe Feature do
  it { should have_and_belong_to_many :hikes }
end

describe Landmark do
  it { should have_and_belong_to_many :hikes }
end

describe Region do

end
