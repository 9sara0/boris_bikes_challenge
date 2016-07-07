class DockingStation

  def initialize
    @bikes =[]
  end

  attr_reader :bikes

  def release_bike
    raise 'No bikes available' unless !@bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'There is no room to dock a bike' if @bikes.length >= 20
    @bikes << bike
  end
end
