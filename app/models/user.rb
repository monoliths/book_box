class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :books
  has_many :sales, class_name: 'Sale', foreign_key: 'seller'
  has_many :purchases, class_name: 'Sale', foreign_key: 'buyer'
end
