require 'docking_station'
#require_relative '../lib/docking_station'

# In spec/dockingstation_spec.rb
describe DockingStation do
  #arrange, act, assert

    it "wants to release the bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to :release_bike              
    end

    it "returns a bike" do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to :get_bike
    end

    it "returns bike status" do
        bike_status = Bike.new
        expect(bike_status).to respond_to :working?
    end

    it "dock a bike at a docking station" do
      docking_station = DockingStation.new
      expect(docking_station.docked_bike).to eq "Return Bike"
    end
    
    # it "check docking station if there is a bike available" do
    #   docking_station = DockingStation.new
    #   expect(docking_station.bike_in_station).to eq "Available"
    # end 

    it "check docking station if there is a bike available" do
      docking_station = DockingStation.new
      expect { docking_station.bike_in_station }.to raise_error
    end

    # it "check docking station if there is a bike available" do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to :bike_in_station
    # end
end

