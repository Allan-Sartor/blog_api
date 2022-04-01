class Article < ApplicationRecord
  has_many :reviews, dependent: :destroy

  before_create :slugify

  def slugify
    self.slug = title.parameterize
  end

  def avg_score
    return 0 unless reviews.count.positive?

    reviews.average(:score).to_f
  end
end
