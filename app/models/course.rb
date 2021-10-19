class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5, maximum: 5000 }

  has_rich_text :description

  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged
end
