require 'rails_helper'

RSpec.describe Phrase, type: :model do
  it { should validate_presence_of :expression }
end
