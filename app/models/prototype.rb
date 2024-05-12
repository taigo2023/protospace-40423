class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: false

  def was_attached?
    self.image.attached?
  end
end
