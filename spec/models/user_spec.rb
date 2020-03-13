require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    # 1. nickname,email,first_name,last_name,first_name_kana,last_name_kana,birthday,telephone_numbeが存在すれば登録できること
    it "is valid with a nickname,email,first_name,last_name,first_name_kana,last_name_kana,birthday,telephone_number" do
      user = build(:user)
      expect(user).to be_valid
    end
    # 2. nicknameが空では登録できないこと
    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    # 3. emailが空では登録できないこと
    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    
    # 4. passwordが空では登録できないこと
    it "is invalid without a password" do
      user = build(:user, password: nil)
      expect(user.errors[:password]).to include("can't be blank")
    end

    # 6. passwordが存在してもpassword_confirmationが空では登録できないこと
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

  end
end