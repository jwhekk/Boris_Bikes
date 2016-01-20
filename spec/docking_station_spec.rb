require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it "accepts a bike" do
    is_expected.to respond_to(:dock).with(1).argument
  end
  station = DockingStation.new
  bike = station.release_bike
  station.dock(bike)
  it {expect(station.bikes).to eq bike}
end
