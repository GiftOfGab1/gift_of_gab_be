require 'rails_helper'

RSpec.describe UserSection, type: :model do
  describe 'relationships' do
  it {should belong_to :user }
  it {should belong_to :section}
  end
end
