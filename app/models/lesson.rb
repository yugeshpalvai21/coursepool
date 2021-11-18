class Lesson < ApplicationRecord
  belongs_to :course

  validates :title, presence: true, length: { minimum: 5, maximum: 80 }
  validates :content, presence: true, length: { minimum: 10 }

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_rich_text :content
end
