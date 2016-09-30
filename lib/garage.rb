require_relative 'bike'
require_relative 'docking_station'

class Garage

  include BikeContainer

  def receive_bike(bike)
    add_bike(bike)
  end

  def fix_bike(bike)
    bike.fix
  end

  def send_bike(bike, station)
    station.dock(bike)
  end

end
