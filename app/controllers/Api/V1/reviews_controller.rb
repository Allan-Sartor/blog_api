module Api
  module V1
    class ReviewsController < ApplicationController
      
      # reviews/ Create new review for articles
      def create
        @review = article.reviews.new(review_params)
    
        if @review.save
          render json: ReviewSerializer.new(@review).serialized_json 
        else
          render json: { error: review.errors.messages }, status: 422
        end
      end
      
      # Review/ id - Delete review article
      def destroy
        @review = Review.find(params[:id])
    
        if @review.destroy
          head :no_content
        else
          render json: {error: review.errors.messages }, status: 422
        end
      end
    
      private
      
        def article
          @article ||= Article.find(params[:article_id])
        end
      
        def review_params
          params.require(:review).permit(:title, :description, :score ,:article_id)
        end
    end
  end
end
