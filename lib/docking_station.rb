require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20

  attr_accessor :capacity


  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end


  attr_reader :bikes

  def release_bike
    if empty?
      raise 'No bikes available'
    elsif is_broken?
      raise 'Bike is broken'
    else
      @bikes.pop
    end
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

  def is_broken?
    @bikes.last.broken?
  end


end
