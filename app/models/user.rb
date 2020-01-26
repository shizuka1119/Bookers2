class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attachment :profile_image

  has_many :books
  validates :name, length: {in: 2..20},  presence: true
  validates :introduction, length: {maximum: 50}
end
