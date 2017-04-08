class User < ActiveRecord::Base

  has_secure_password

  has_one :auth_token,         dependent: :destroy

  has_many :purchases,         dependent: :destroy
  has_many :orders,            dependent: :destroy
  has_many :gift_certificates, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: {case_sensitive: false }, email: true

end
