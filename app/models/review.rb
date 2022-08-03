class Review < ApplicationRecord
  belongs_to :article

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
