class DockingStation
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'There is no room to dock a bike' if full?
    @bikes << bike
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
end
