require 'password_checker'

RSpec.describe PasswordChecker do
  pc = PasswordChecker.new
  context "Test for when password is a string" do
    it "Test for when password is greater than 8 letters 'helloworld', returns 'true'" do
      expect(pc.check('helloword')).to eq true
    end 
    it "Test for when password is less than 8 letters 'hello', throws an exception with error message 'Invalid password, must be 8+ characters.'" do 
    expect{pc.check('hello')}.to raise_error 'Invalid password, must be 8+ characters.'
    end

  end
  it "Test for when password is numeric to throw a NoMethodError" do
    expect{pc.check(12345678)}.to raise_error(NoMethodError) 
  end
  context "Test for when password is not a string" do
    it "Test for when password is an array with length greater than 8 '[1,2,3,4,5,6,7,8,9]', returns 'true'" do 
    expect(pc.check([1,2,3,4,5,6,7,8,9])).to eq true
    end 
    it "Test for when password is an array with length less than 8 '[1,2,3,4,5]', throws an exception with error message 'Invalid password, must be 8+ characters.'" do
      expect{pc.check([1,2,3,4,5])}.to raise_error 'Invalid password, must be 8+ characters.'
    end 
  end 
end 


