require "check_codeword"

RSpec.describe "check codeword test" do
  it "returns 'Correct! Come in.' when passed `horse`" do
    expect(check_codeword('horse')).to eq 'Correct! Come in.'
  end
  it "returns 'Close, but nope.' when passed word starts with h and ends with e " do
    expect(check_codeword('hearse')).to eq 'Close, but nope.'
  end
  it "returns 'WRONG!' when passed word doesn't start with h and ends with e " do
    expect(check_codeword('Wrong')).to eq 'WRONG!'
  end
end 