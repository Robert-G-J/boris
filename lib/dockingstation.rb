require_relative 'bike'

class DockingStation

  attr_reader :bike

  #def initialize
    #@bike
  # => end

  def release_bike
    fail "No Bikes Available to release" unless @bike
    @bike
  end

  def dock(bike)
    fail "Station Full" if @bike
    @bike = bike
  end

end
