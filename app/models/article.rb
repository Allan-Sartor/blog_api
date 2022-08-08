class Article < ApplicationRecord
  before_create :slugify

  has_many :reviews, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  validates_associated :reviews

  def slugify
    self.slug = title.parameterize
  end

  def avg_score
    return 0 unless reviews.count.positive?

    reviews.average(:score).to_f
  end
end
