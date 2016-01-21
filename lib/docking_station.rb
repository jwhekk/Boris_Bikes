require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes, :num_bikes
  def initialize
    @num_bikes = 20
  end
  def release_bike
    if @num_bikes > 0
      @num_bikes -= 1
      @bikes
    else
      raise "No more bikes!"
    end
  end
  def dock(bike)
    raise "Dockingstation full" if @num_bikes >= 20
    @bikes = bike
    @num_bikes += 1
  end
end
