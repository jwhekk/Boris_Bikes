require 'borisbikes'
describe Bike do
  it "responds to method 'working?'" do
    expect(subject).respond_to?(:working?)
  end
end
