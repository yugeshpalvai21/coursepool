class Course < ApplicationRecord
  validates :title, :short_description, :price, presence: true
  validates :description, presence: true, length: { minimum: 5, maximum: 5000 }
  validates :short_description, length: { minimum: 5, maximum: 160 }

  has_rich_text :description

  belongs_to :user

  has_many :lessons, dependent: :destroy

  extend FriendlyId
  friendly_id :title, use: :slugged

  include PublicActivity::Model
  tracked
end
