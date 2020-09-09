require 'rails_helper'

RSpec.describe Section, type: :model do

  describe 'relationships' do
    it {should have_many(:user_sections)}
    it {should have_many(:users).through(:user_sections)}
    it {should have_many(:section_phrases)}
    it {should have_many(:phrases).through(:section_phrases)}
  end
end
