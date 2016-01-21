require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it 'releases working bikes' do
    
    bike = Bike.new
    expect(bike).to be_working
  end
  it "accepts a bike" do
    is_expected.to respond_to(:dock).with(1).argument
  end
  station = DockingStation.new
  bike = station.release_bike
  station.dock(bike)
  it {expect(station.bikes).to eq bike}
  it "returns 'No bikes' when out of bikes" do
    expect { 21.times{station.release_bike} }.to raise_error "No more bikes!"
  end
  it "returns 'Dockingstation full' when num_bike eq 20" do


    expect { 21.times {station.dock(bike) } }.to raise_error "Dockingstation full"
  end
end
