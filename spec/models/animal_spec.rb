require 'rails_helper'

RSpec.describe Animal, type: :model do
  describe 'relationships'do
    it { should belong_to :zoo }
  end
end