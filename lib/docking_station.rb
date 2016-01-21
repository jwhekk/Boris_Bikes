require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
    20.times { @bikes << Bike.new }
  end
  def release_bike
    raise "No more bikes!" if empty?
    @bikes.pop
  end
  def dock(bike)
    raise "Dockingstation full" if full?
    @bikes << bike
    @bike = bike
  end

  private

  def full?
    @bikes.count >= 20
  end
  def empty?
    @bikes.empty?
  end
end
