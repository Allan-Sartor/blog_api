class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :body, :slug ,:avg_score, :created_at

  has_many :reviews
end
