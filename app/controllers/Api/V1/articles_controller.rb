module Api
  module V1
    class ArticlesController < ApplicationController
      # GET /articles
      def index
        @articles = Article.all

        render json: ArticleSerializer.new(@articles, options).serialized_json 
        # render json: {status: 'SUCCESS', message:'Artigos carregados', data: @articles}, status: 200
      end
    
      # GET /articles/1
      def show
        @article = Article.find_by(slug: params[:slug])

        render json: ArticleSerializer.new(@article, options).serialized_json
        # render json: {status: 'SUCCESS', message:'Artigo carregado', data: @article}, status: 200
      end
    
      # POST /articles
      def create
        @article = Article.new(article_params)
    
        if @article.save
          render json: ArticleSerializer.new(@article).serialized_json
          # render json: {status: 'SUCCESS', message:'Artigo salvo!', data:@article}, status: 200
        else
          render json: {error: article.errors.messages }, status: 422
          # render json: {status: 'ERROR', message:'Artigo não foi salvo!', data: @article.erros}, status: 422
        end
      end
    
      # PATCH/PUT /articles/1 our slug
      def update
        @article = Article.find_by(slug: params[:slug])

        if @article.update(article_params)
          render json: ArticleSerializer.new(@article).serialized_json
          # render json: {status: 'SUCCESS', message:'Artigo atualizado!', data: @article}, status: 200
        else
          render json: {error: article.errors.messages }, status: 422
          # render json: {status: 'ERROR', message:'Artigo não foi atualizado!', data: @article.erros}, status: 422
        end
      end
    
      # DELETE /articles/1
      def destroy
        @article = Article.find_by(slug: params[:slug])

        if @article.destroy
          # render json: {status: 'SUCCESS', message:'Artigo deletado!', data: @article}, status: 200
          head :no_content
        else
          render json: {error: article.errors.messages }, status: 422
          # render json: {status: 'ERROR', message:'Artigo não foi deletado!', data: @article.erros}, status: 422
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
    end
  end
end