require 'greet'

RSpec.describe "The greeting method" do
  it 'accepts `name` and prints "Hello `name`' do
  expect(greet("Shaun")).to eq "Hello Shaun"
end
end  