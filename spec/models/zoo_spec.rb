require 'rails_helper'

RSpec.describe Zoo, type: :model do
  describe 'relationships' do
    it{ should have_many :animals }
  end
end