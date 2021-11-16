class Lesson < ApplicationRecord
  belongs_to :course

  extend FriendlyId
  friendly_id :title, use: :slugged
end
