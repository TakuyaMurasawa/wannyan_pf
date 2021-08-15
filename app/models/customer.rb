class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :user_name, presence: true
  
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true       
  validates :first_name_kana, presence: true
  
  validates :postcode, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :house_number, presence: true
  
end
