require_relative 'bike'

class DockingStation

  attr_reader :bike, :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No Bikes Available to release" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Station Full" if @bikes.count >= 20
    @bikes << bike
  end

end
