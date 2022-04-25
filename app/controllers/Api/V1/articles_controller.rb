module Api
  module V1
    class ArticlesController < ApplicationController
    include Paginable

      # GET /articles included pagination for articles
      def index
        @articles = Article.page(current_page).per(per_page)
    
        render json: ArticleSerializer.new(@articles, meta_options).serialized_json
      end
    
      # GET /articles/slug
      def show
        @article = Article.find_by(slug: params[:slug])

        render json: ArticleSerializer.new(@article, options).serialized_json
      end
    
      # POST /articles
      def create
        @article = Article.new(article_params)
    
        if @article.save
          render json: ArticleSerializer.new(@article).serialized_json
        else
          render json: {error: article.errors.messages }, status: 422
        end
      end
    
      # PATCH/PUT /articles/slug
      def update
        @article = Article.find_by(slug: params[:slug])

        if @article.update(article_params)
          render json: ArticleSerializer.new(@article).serialized_json
        else
          render json: {error: article.errors.messages }, status: 422
        end
      end
    
      # DELETE /articles/slug
      def destroy
        @article = Article.find_by(slug: params[:slug])

        if @article.destroy
          head :no_content
        else
          render json: {error: article.errors.messages }, status: 422
        end
      end
    
      private
        # Only allow a list of trusted parameters through.
        def article_params
          params.require(:article).permit(:title, :body)
        end

        def options
          @options ||= { include: %i[reviews] }
        end

        def meta_options
          @meta_options ||= { meta: meta_attributes(@articles) }
        end
    end
  end
end