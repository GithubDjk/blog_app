require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before do
    @user = User.create(email: "test@example.com", password: "password")
    sign_in @user
  end

  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    it "creates a new post" do
      post_params = { title: "Sample Post", content: "This is a sample post.", user: @user }
      expect {
        post :create, params: { post: post_params }
      }.to change(Post, :count).by(1)
    end
  end
end
