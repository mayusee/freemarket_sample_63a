require 'rails_helper'

RSpec.describe Address, type: :model do
  describe '#create' do
    it "is valid address" do
      address = build(:address)
      expect(address).to be_valid
    end
  end
end