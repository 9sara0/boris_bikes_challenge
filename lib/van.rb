class Van
  include BikeContainer

  def transfer(bike, station)
    load_bike(bike)
    unload_bike(bike, station)
  end


  private
  def load_bike(bike)
    add_bike bike
  end

  def unload_bike(bike, station)
    bikes.delete bike
    station.dock(bike)
  end
end
