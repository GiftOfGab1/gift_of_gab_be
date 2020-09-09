require 'rails_helper'

RSpec.describe SectionPhrase, type: :model do
  describe 'relationships' do
    it {should belong_to :section}
    it {should belong_to :phrase }
  end
end