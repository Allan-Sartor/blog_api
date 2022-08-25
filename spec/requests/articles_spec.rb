require 'rails_helper'

RSpec.describe "Articles requests", type: :request do
  let!(:articles) { create_list(:article, 5) }
  let!(:article) { articles.first }
  let!(:article_attributes) { FactoryBot.attributes_for(:article) }
  let(:json) { JSON.parse(response.body) }

  context "GET /index" do
    before { get '/api/v1/articles' }
    
    it "return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "return list of articles" do
      json = JSON.parse(response.body)
      expect(json.count).to eq(2)
    end

    it "return list not be empty" do
      expect(response.body).not_to be_empty
    end  
  end

  context "GET /show/:id" do
    before { get "/api/v1/articles/#{article.slug}" }

    it "return status code 200" do
      expect(response).to have_http_status(200)
    end

    it "return list not be empty" do
      expect(json).not_to be_empty
    end

    it "when find article via slug" do
      expect(json['slug']).to eq(article.slug)
    end  
  end

  context "POST /create" do
    it "creates the article with correct" do
      article = build(:article)
      post '/api/v1/articles', params: { article: { title: article.title, body: article.body } }

      expect(Article.last.title).to eq(article.title)
    end

    it "when it has no valid parameters does not create article" do
      send_data_empty = post '/api/v1/articles', params: { article: { title: '', body: '' } }

      expect{send_data_empty}.to_not change(Article, :count)
    end
  end

  context "UPDATE /update" do
    context "when the article exists" do
      it "return status code 200" do
        put "/api/v1/articles/#{article.slug}", params: { article: article_attributes }
        
        expect(response).to have_http_status(200)
      end
      
      it "update the record article" do
        put "/api/v1/articles/#{article.slug}", params: { article: article_attributes }
        
        expect(article.reload).to have_attributes(article_attributes)
      end

      it "return the article update" do
        put "/api/v1/articles/#{article.slug}", params: { article: article_attributes }
        
        expect(article.reload).to have_attributes(json.except('created_at', 'updated_at'))
      end
    end

    # context "when the article exists" do
    #   before { put "/api/v1/articles/teste-rspec-spec", params: { article: article_attributes } }
      
    #   it "return status code 422" do
    #     expect(response).to have_http_status(422)
    #   end
      
    #   it "return error when it has not article for the slug selected" do
    #     expect(json).to match(/Not found/)
    #   end
    # end
  end

  context "DELETE /delete" do
    context "when the article exists" do
      before { delete "/api/v1/articles/#{article.slug}" }

      it "return status code 204" do
        expect(response).to have_http_status(204)
      end

      it "destroy the record for article" do
        expect(response.body).to be_empty
      end
    end  
  end
end