class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  # :confirmable
  #rest of the code
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :full_name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :birthday, presence: true
end
