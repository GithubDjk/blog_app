require 'rails_helper'

RSpec.describe Comment, type: :model do
  it "is valid with valid attributes" do
    user = User.create(email: "test@example.com", password: "password")
    post = Post.create(title: "Sample Post", content: "This is a sample post.", user: user)
    comment = Comment.new(content: "This is a comment.", post: post, user: user)
    expect(comment).to be_valid
  end

  it "is not valid without content" do
    comment = Comment.new(content: nil)
    expect(comment).to_not be_valid
  end

  it "is not valid without a post" do
    user = User.create(email: "test@example.com", password: "password")
    comment = Comment.new(content: "This is a comment.", user: user)
    expect(comment).to_not be_valid
  end

  it "is not valid without a user" do
    user = User.create(email: "test@example.com", password: "password")
    post = Post.create(title: "Sample Post", content: "This is a sample post.", user: user)
    comment = Comment.new(content: "This is a comment.", post: post)
    expect(comment).to_not be_valid
  end
end
