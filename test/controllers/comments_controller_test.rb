require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get comments_url, as: :json
    assert_response :success
  end

  test "should create comment" do
    assert_difference("Comment.count") do
      post comments_url, params: { comment: { articles_id: @comment.articles_id, description: @comment.description, title: @comment.title } }, as: :json
    end

    assert_response :created
  end

  test "should show comment" do
    get comment_url(@comment), as: :json
    assert_response :success
  end

  test "should update comment" do
    patch comment_url(@comment), params: { comment: { articles_id: @comment.articles_id, description: @comment.description, title: @comment.title } }, as: :json
    assert_response :success
  end

  test "should destroy comment" do
    assert_difference("Comment.count", -1) do
      delete comment_url(@comment), as: :json
    end

    assert_response :no_content
  end
end
