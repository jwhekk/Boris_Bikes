require 'borisbikes'
describe DockingStation do
  it "responds to a method release_bike" do
    dockingstation = DockingStation.new
    expect(dockingstation.respond_to?(:release_bike)).to eq true
  end
  it "responds to relese_bike creating a bike object" do
    expect((subject).release_bike).not_to eq nil
  end
  it "reponds to method 'bikes'" do
    expect((subject).bikes).not_to eq nil
  end
  it "raises an error when no bikes available" do
    expect{5.times {(subject).release_bike}}.to raise_error "no bikes"

  end

end
