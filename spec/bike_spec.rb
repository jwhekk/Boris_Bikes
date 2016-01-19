require 'borisbikes'
describe Bike do
  it "responds to method 'working?'" do
    expect(subject).respond_to?(:working?)
  end
  it "responds true to the method 'working?'" do
    expect((subject).working?).to eq true
  end
end
