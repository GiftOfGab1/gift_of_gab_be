require 'rails_helper'

RSpec.describe User, type: :model do

  describe "relationships" do
    xit {should have_many(:userSections)}
  end 
end
