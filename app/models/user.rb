class User < ApplicationRecord
  rolify

  extend FriendlyId
  friendly_id :email, use: :slugged

  after_create :assign_default_role

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :courses
  has_many :enrollments, dependent: :destroy

  def to_s
    email
  end

  def assign_default_role
    self.add_role(:admin) if User.count == 1
    self.add_role(:teacher)
    self.add_role(:student)
  end

  def online?
    updated_at >= 10.minutes.ago
  end
end
