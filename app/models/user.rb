class User < ActiveRecord::Base
  before_save { email.try(:downcase!) }

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :password, presence: true, length: { minimum: 6, maximum: 20 }
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }

  has_secure_password
end
