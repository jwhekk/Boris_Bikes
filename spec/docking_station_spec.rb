require 'docking_station'

describe DockingStation do
  docking_station = DockingStation.new
  it {expect(docking_station).to respond_to(:release_bike)}
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
