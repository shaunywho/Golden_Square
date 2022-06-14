require 'gratitudes'

RSpec.describe Gratitudes do
  gratitudes_obj = Gratitudes.new
  it "Not thankful for anyone" do
    expect(gratitudes_obj.format).to eq "Be grateful for: "
  end 
  it "Grateful for cheese" do
    gratitudes_obj.add("cheese")
    expect(gratitudes_obj.format).to eq "Be grateful for: cheese"
  end 

  it "Grateful new instance" do
    gratitudes_obj = Gratitudes.new
    gratitudes_obj.add("hello")
    gratitudes_obj.add("world")
    expect(gratitudes_obj.format).to eq "Be grateful for: hello, world"
  end 
end 
