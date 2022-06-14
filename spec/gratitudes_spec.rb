require 'gratitudes'

RSpec.describe Gratitudes do
  gratitudes_obj = Gratitudes.new
  it "Testing if the Gratitudes class outputs a string with method format regardless of whether there is a gratitudes list" do
    expect(gratitudes_obj.format).to eq "Be grateful for: "
  end 
  it "Test the add function adds a value into the string" do
    gratitudes_obj.add("cheese")
    expect(gratitudes_obj.format).to eq "Be grateful for: cheese"
  end 
  it "Test the add function adds a value into the string" do
    gratitudes_obj = Gratitudes.new
    gratitudes_obj.add(2)
    expect(gratitudes_obj.format).to eq "Be grateful for: 2"
  end 

  

  it "Testing if when adding multiple values you get a correctly formatted string with a comma in between" do
    gratitudes_obj = Gratitudes.new
    gratitudes_obj.add("hello")
    gratitudes_obj.add("world")
    expect(gratitudes_obj.format).to eq "Be grateful for: hello, world"
  end 
end 
