require 'rails_helper'

RSpec.describe Section, type: :model do

  describe 'relationships' do
    it {should have_many(:user_sections)}
    it {should have_many(:users).through(:user_sections)}
  end
end
