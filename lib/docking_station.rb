require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
    20.times { @bikes << Bike.new }
  end
  def release_bike
    raise "No more bikes!" if @bikes.empty?
    @bikes.pop
  end
  def dock(bike)
    raise "Dockingstation full" if @bikes.count > 20
    @bikes << bike
    @bike = bike
  end
end
