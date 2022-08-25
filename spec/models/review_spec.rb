require 'rails_helper'

RSpec.describe "Review model", type: :model do
  context "when the model is validates attributes" do
    let(:review) { build(:review) }
  
    it 'the title is presence' do
      expect(review.title).to be_truthy
    end
  
    it 'the description is presence' do
      expect(review.description).to be_truthy
    end
  
    it "title should be present" do
      review.title = nil
      expect(review).to_not be_valid
    end
  
    it "body should be present" do
      review.description = nil
      expect(review).to_not be_valid
    end

    it "score should be present" do
      review.score = nil
      expect(review).to_not be_valid
    end
  end
end