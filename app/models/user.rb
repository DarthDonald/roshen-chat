class User < ActiveRecord::Base

  has_secure_password

  has_one :auth_token, dependent: :destroy

  has_many :purchases
  has_many :orders

  validates :name, presence: true

  validates :email, presence: true, uniqueness: {case_sensitive: false }, email: true

end
