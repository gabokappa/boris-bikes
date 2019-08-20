require "bike"

describe Bike do
  let(:bike) { Bike.new }

  it "responds to #working?" do
    expect(bike).to respond_to "working?"
  end

  it "works by default" do
    expect(bike.working?).to eq(true)
  end
end
