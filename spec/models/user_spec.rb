require 'rails_helper'

RSpec.describe User, type: :model do

  describe "relationships" do
    it {should have_many(:user_sections)}
    it {should have_many(:sections).through(:user_sections)}
  end
end
