require_relative '../lib/bike'

class DockingStation

  attr_reader :release_bike, :bike_in_station, :docked_bike

  def initialize
    @release_bike = release_bike
    @docked_bike = "Return Bike"
    @bike_in_station = ""
  end

  def release_bike
    Bike.new
  end

  def get_bike
    puts "...."
  end    

  def docked_bike
    puts ".."
    @docked_bike
  end

  def bike_in_station
    new_bike = Bike.new
    if new_bike == "something"
      raise 'An error has occured'
    else
      new_bike
    end
  end 

end
    

