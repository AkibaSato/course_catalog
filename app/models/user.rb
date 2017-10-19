class User < ApplicationRecord
  has_many :courses

  before_save { self.email = email.downcase }

  validates :name,
  presence: true,
  uniqueness: { case_sensitive: false },
  length: { minimum: 3, maximum: 15 }

  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
  presence: true,
  length: { maximum: 105 },
  uniqueness: { case_sensitive: false },
  format: { with: VALID_EMAIL_REGEX }

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
