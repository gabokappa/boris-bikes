require "docking_station"

describe "boris-bikes" do
  describe DockingStation do
    it "responds to release_bike" do
      expect(DockingStation.new).to respond_to "release_bike"
    end
  end
end
