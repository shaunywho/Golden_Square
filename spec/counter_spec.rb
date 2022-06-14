require "counter"


RSpec.describe Counter do
counter = Counter.new
it "Counter should have a zero state when first initialised" do
  expect(counter.report).to eq "Counted to 0 so far."
end 
it "Counter should have 1 state when 1 added" do
  counter.add(1)
  expect(counter.report).to eq "Counted to 1 so far."
end 
it "Counter should have a 2 state when 2 added" do
  counter.add(1)
  expect(counter.report).to eq "Counted to 2 so far." 
end 

it "test initialisation" do
new_counter = Counter.new
expect(new_counter).to be_a(Counter)
end

end
