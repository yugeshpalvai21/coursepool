class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :courses

  after_create :assign_default_role

  def to_s
    email
  end

  extend FriendlyId
  friendly_id :email, use: :slugged
  
  def assign_default_role
    self.add_role(:admin) if User.count == 1
    self.add_role(:teacher)
    self.add_role(:student)
  end

  def online?
    updated_at >= 10.minutes.ago
  end
end
