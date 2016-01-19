require 'borisbikes'
describe DockingStation do
  it "responds to a method release_bike" do
    dockingstation = DockingStation.new
    expect(dockingstation.respond_to?(:release_bike)).to eq true
  end
end
