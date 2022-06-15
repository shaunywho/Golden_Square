require 'present'

RSpec.describe Present do

  it "Test Error if content is nil when we try to wrap present twice" do
    new_present = Present.new
    new_present.wrap("hello")

    expect{new_present.wrap('world')}.to raise_error "A contents has already been wrapped."
  end

  it "Test Error is thrown if a present has not been wrapped and we decide to unwrap" do
    new_present = Present.new
    expect{new_present.unwrap}.to raise_error "No contents have been wrapped."
  end 

  it "Test Error is thrown if a present has not been wrapped and we decide to unwrap" do
    new_present = Present.new
    new_present.wrap(nil)
    expect{new_present.unwrap}.to raise_error "No contents have been wrapped."
  end 
end 