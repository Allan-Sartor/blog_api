require 'rails_helper'

RSpec.describe "Article model", type: :model do
  context "when the model" do
    let(:article) { build(:article) }
    let(:review) { build(:review) }
    
    context "is title" do 
      before { Article.create!(title: article.title, body: article.body) }
      it 'is invalid if of not unique' do
        expect(article).to be_invalid
      end
    end
    
    context "when is presence for" do
      it 'the title' do
        expect(article.title).to be_truthy
      end
      
      it 'the body' do
        expect(article.body).to be_truthy
      end
      
      it 'the slug' do
        expect(article.slug).to be_truthy
      end
    end

    context "is validates attributes" do
      it 'slug format should be parameterize' do
        expect(article.slug).to eq article.slug.parameterize
      end

      it "avg score return 0 when not of reviews createds" do
        expect(article.avg_score).to eq(0)
      end

      it "avg score return score when of reviews createds" do
        article_create = create(:article)
        2.times do
          article_create.reviews.create(title: review.title, description: review.description, score: review.score)
        end

        expect(article_create.avg_score).to eq(article_create.avg_score)
      end
      
      it "title should be present" do
        article.title = nil
        expect(article).to_not be_valid
      end
    
      it "body should be present" do
        article.body = nil
        expect(article).to_not be_valid
      end
    end
  end
end