require "docking_station"

describe DockingStation do
  let(:docking_station) { DockingStation.new }

  it "responds to release_bike" do
    expect(docking_station).to respond_to "release_bike"
  end

  it "releases a bike" do
    expect(docking_station.release_bike).to be_instance_of Bike
  end

  it "releases a working bike" do
    expect(docking_station.release_bike.working?).to eq true
  end
end
