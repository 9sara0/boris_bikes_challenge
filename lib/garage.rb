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

  def send_bike(bike, van, station)
    bikes.delete bike
    van.transfer(bike, station)
  end

end
