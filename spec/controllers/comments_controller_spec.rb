require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before do
    @user = User.create(email: "test@example.com", password: "password")
    @post = Post.create(title: "Sample Post", content: "This is a sample post.", user: @user)
    sign_in @user
  end

  describe "POST #create" do
    it "creates a new comment" do
      comment_params = { content: "This is a comment.", post_id: @post.id, user_id: @user.id }
      expect {
        post :create, params: { post_id: @post.id, comment: comment_params }
      }.to change(Comment, :count).by(1)
    end

    it "redirects to the post after creating a comment" do
      comment_params = { content: "This is a comment.", post_id: @post.id, user_id: @user.id }
      post :create, params: { post_id: @post.id, comment: comment_params }
      expect(response).to redirect_to(post_path(@post))
    end
  end

  describe "DELETE #destroy" do
    before do
      @comment = Comment.create(content: "This is a comment.", post: @post, user: @user)
    end

    it "deletes the comment" do
      expect {
        delete :destroy, params: { post_id: @post.id, id: @comment.id }
      }.to change(Comment, :count).by(-1)
    end

    it "redirects to the post after deleting a comment" do
      delete :destroy, params: { post_id: @post.id, id: @comment.id }
      expect(response).to redirect_to(post_path(@post))
    end
  end
end
