require 'borisbikes'
describe DockingStation do
  it "responds to a method release_bike" do
    dockingstation = DockingStation.new
    expect(dockingstation.respond_to?(:release_bike)).to eq true
  end
  it "responds to relese_bike creating a bike object" do
    expect((subject).release_bike).not_to eq nil
  end
end
