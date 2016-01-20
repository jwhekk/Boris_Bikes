require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes, :num_bikes
  def initialize
    @num_bikes = 20
  end
  def release_bike
    if @num_bikes > 0
      @num_bikes -= 1
      Bike.new
    else
      raise "No more bikes!"
    end
  end
  def dock(bike)
    @bikes = bike
    @num_bikes += 1
  end
end
