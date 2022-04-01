module Api
  module V1
    class ReviewsController < ApplicationController
      def create
        @review = Review.new(review_params)
    
        if @review.save
          render json: ArticleSerializer.new(@review).serialized_json 
          # render json: {status: 'SUCCESS', message:'Review salvo!', data: @review}, status: 200
        else
          render json: { error: article.errors.messages }, status: 422
          # render json: {status: 'ERROR', message:'Review não foi salvo!', data: @review.erros}, status: 422
        end
      end
    
      def destroy
        @review = Review.find(params[:id])
    
        if @review.destroy
          head :no_content
          # render json: {status: 'SUCCESS', message:'Review deletado!', data: @review}, status: 200
        else
          render json: {error: article.errors.messages }, status: 422
          # render json: {status: 'ERROR', message:'Review não foi deletado!', data: @review.erros}, status: 422
        end
      end
    
      private
        # Only allow a list of trusted parameters through.
        def review_params
          params.require(:review).permit(:title, :description, :article_id)
        end
    end
  end
end
