require 'docking_station'

describe DockingStation do
  let(:station) { DockingStation.new}
  let!(:bikenumber) {subject.bikes.length}

  it "returns '20' when asked for bikes" do
    expect(bikenumber).to eq 20
  end

  it {is_expected.to respond_to(:release_bike)}
  it 'releases working bikes' do

    bike = Bike.new
    expect(bike).to be_working
  end
  it "accepts a bike" do
    is_expected.to respond_to(:dock).with(1).argument
  end


  it 'returns bike after you dock it'do
    bike = subject.release_bike
    expect(subject.dock(bike)).to eq bike
  end

  it "returns 'No bikes' when out of bikes" do
    expect { 21.times{subject.release_bike} }.to raise_error "No more bikes!"
  end
  it "returns 'Dockingstation full' when num_bike eq 20" do
    bike = subject.release_bike
    expect { 21.times {subject.dock(bike) } }.to raise_error "Dockingstation full"
  end
  # describe "#full?" do
  #   it { is_expected.to respond_to(:full?)}
  #   it "returns true when 20" do
  #     expect(subject.full?).to eq true
  #   end
  #   it "returns false when less then 20" do
  #     subject.release_bike
  #     expect(subject.full?).to eq false
  #   end
  # end
  # # describe "empty?" do
  #   it { is_expected.to respond_to(:empty?)}
  #   it "returns true when 0" do
  #     20.times { subject.release_bike }
  #     expect(subject.empty?).to eq true
  #   end
  #   it "returns false when > 0" do
  #     expect(subject.empty?).to eq false
  #   end
  # end
end
