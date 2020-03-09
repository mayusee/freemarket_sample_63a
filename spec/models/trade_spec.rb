require 'rails_helper'

RSpec.describe Trade, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe '#create' do
    it "is invalid without a item_id" do
      trade = build(:trade, item_id: nil)
      trade.valid?
      expect(trade.errors[:item_id]).to include("can't be blank")
    end
    it "is invalid without a user_id" do
      trade = build(:trade, user_id: nil)
      trade.valid?
      expect(trade.errors[:user_id]).to include("can't be blank")
    end
    it "is invalid without a address_id" do
      trade = build(:trade, address_id: nil)
      trade.valid?
      expect(trade.errors[:address_id]).to include("can't be blank")
    end
    it "is invalid without a status_num" do
      trade = build(:trade, status_num: nil)
      trade.valid?
      expect(trade.errors[:status_num]).to include("can't be blank")
    end
    # 正常動作のテストは、associationの問題が解決してから実装する。
    # it "is valid with a item_id, user_id, address_id, status_num" do
    #   trade = build(:trade)
    #   expect(trade).to be_valid
    # end
  end
end