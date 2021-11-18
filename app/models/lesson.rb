class Lesson < ApplicationRecord
  belongs_to :course

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_rich_text :content
end
