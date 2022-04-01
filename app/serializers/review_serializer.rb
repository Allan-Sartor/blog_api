class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :article_id
end
