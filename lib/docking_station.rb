class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    raise 'There is no room to dock a bike' if @bike
    @bike = bike
  end
end
