class Api::V1::ArticlesController < ApplicationController
  before_action :article_find_by_slug, only: %i[ show update destroy ]
  include Paginable

  # GET /articles included pagination for articles
  def index
    @articles = Article.page(current_page).per(per_page)
    
    render json: ArticleSerializer.new(@articles, meta_options).serialized_json
  end
    
  # GET /articles/slug
    def show
      render json: @article, status: :ok
    end
    
  # POST /articles
  def create
    @article = Article.new(article_params)
    
    if @article.save
      render json: ArticleSerializer.new(@article).serialized_json
    else
      render json: {error: @article.errors.messages }, status: 422
    end
  end
    
  # PATCH/PUT /articles/slug
  def update
    if @article.update(article_params)
      render json: @article,  status: :ok
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end
    
  # DELETE /articles/slug
  def destroy
    if @article.destroy
      head :no_content
    else
      render json: {error: @article.errors.messages }, status: 422
    end
  end
    
  private

  def article_find_by_slug
    @article = Article.find_by(slug: params[:slug])
  end

  def options
    @options ||= { include: %i[reviews] }
  end
  
  def meta_options
    @meta_options ||= { meta: meta_attributes(@articles) }
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end