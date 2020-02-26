class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # associations

  has_many   :items
  has_many   :creditcards
  has_many   :shippings
  has_many   :addresses

end
