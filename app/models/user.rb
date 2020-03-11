class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   after_create :create_cart

   has_one :cart
   has_many :orders

  def create_cart
    Cart.create(user_id: User.last.id)
  end

end
