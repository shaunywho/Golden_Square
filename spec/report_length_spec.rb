require 'report_length'

RSpec.describe "report_length method" do
  it 'returns a "This string was 8 characters long." when I pass `abcdefgh` to the method' do
    expect(report_length("abcdefgh")).to eq "This string was 8 characters long."
  end

  it 'throws a NoMethodError when I pass a numeric value to the method' do
    expect{report_length(1)}.to raise_error(NoMethodError)
  end
end
