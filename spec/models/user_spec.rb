require 'rails_helper'

RSpec.describe User, type: :model do
 it "is invalid without a email" do
   user = User.new(email: nil, password: "password") 
   expect(user.valid?).to eq(false)
  end
  
  it "is invalid without a password" do
   user = User.new(email: "test@sample.com", password: nil) 
   expect(user.valid?).to eq(false)
  end
  
end
