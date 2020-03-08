require 'rails_helper'

RSpec.describe Trade, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe '#create' do
    it "is invalid without a item_id" do
      trade = Trade.new(item_id: nil, user_id: 2, address_id: 2, status_num: 1)
      trade.valid?
      expect(user.errors[:item_id]).to include("can't be blank")
    end
    it "is invalid without a user_id" do
      trade = Trade.new(item_id: 1, user_id: nil, address_id: 2, status_num: 1)
      trade.valid?
      expect(user.errors[:user_id]).to include("can't be blank")
    end
    it "is invalid without a address_id" do
      trade = Trade.new(item_id: 1, user_id: 2, address_id: nil, status_num: 1)
      trade.valid?
      expect(user.errors[:address_id]).to include("can't be blank")
    end
    it "is invalid without a status_num" do
      trade = Trade.new(item_id: 1, user_id: 2, address_id: 2, status_num: nil)
      trade.valid?
      expect(user.errors[:status_num]).to include("can't be blank")
    end
  end
end