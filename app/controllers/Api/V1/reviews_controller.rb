class Api::V1:::ReviewsController < ApplicationController
  before_action :set_article, only: [:create, :destroy]

  # reviews/ Create new review for articles
  def create
    @review = @article.reviews.new(review_params)

    if @review.save
      render json: ReviewSerializer.new(@review).serialized_json 
    else
      render json: { error: review.errors.messages }, status: 422
    end
  end
  
  # Review/ id - Delete review article
  def destroy
    @review = @article.review.find(params[:id])

    if @review.destroy
      head :no_content
    else
      render json: {error: review.errors.messages }, status: 422
    end
  end

  private
  
    def set_article
      @article = Article.find(params[:article_id])
    end
  
    def review_params
      params.require(:review).permit(:title, :description, :score, :article_id)
    end
end