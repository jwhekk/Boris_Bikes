class DockingStation
  def initialize
    @bikes = [Bike.new, Bike.new, Bike.new]
  end
  attr_accessor :bikes

  def release_bike
    if @bikes.empty?
      puts "sorry, no bikes."
    else
    @bikes.pop
    end
  end
end

class Bike
  def working?
    true
  end
  def dock(dockingstation)
    if dockingstation.bikes.length >= 4
      puts "Sorry, no space."
    else
    dockingstation.bikes << self
    end
  end
end
