require "./lib/docking_station"

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

  it "responds to dock_bike" do
    expect(docking_station).to respond_to "dock_bike"
  end

  it "docks a bike" do
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.bikes).to include bike
  end
end
