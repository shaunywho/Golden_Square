require 'string_builder'


RSpec.describe 'StringBuilder' do
init_string = StringBuilder.new
it "StringBuilder returns 0 when initalized and size is called" do
expect(init_string.size).to eq 0
end
it "StringBuilder returns '' when initialized and output is called" do
  expect(init_string.output).to eq ''
end
it "StringBuilder to throw an error when add(1) is called" do
  expect{init_string.add(1)}.to raise_error(TypeError)
  end
it "StringBuilder to be length 1 and return 1 when add('1') and size and output are called" do
  init_string.add('1')
  expect(init_string.size).to eq 1
  end
it "StringBuilder to be length 1 and return 1 when add('1') and size and output are called" do
  expect(init_string.output).to eq '1'
  end
end

RSpec.describe "StringBuilder2" do 
  it  do
  expect(StringBuilder2.new).to be_a(StringBuilder2)
  end
end