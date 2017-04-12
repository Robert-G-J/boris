require_relative 'bike'

class DockingStation

  attr_reader :bike, :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No Bikes Available to release" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Station Full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end




end
