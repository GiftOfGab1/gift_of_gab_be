require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do 
    it {should validate_presence_of(:firstName)}
    it {should validate_presence_of(:lastName)}
    it {should validate_presence_of(:email)}
  end 

  describe "relationships" do
    xit {should have_many(:userSections)}
  end 
end
