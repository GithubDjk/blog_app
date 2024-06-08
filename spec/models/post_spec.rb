require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with valid attributes" do
    user = User.create(email: "test@example.com", password: "password")
    post = Post.new(title: "Sample Post", content: "This is a sample post.", user: user)
    expect(post).to be_valid
  end

  it "is not valid without a title" do
    post = Post.new(title: nil)
    expect(post).to_not be_valid
  end

  it "is not valid without content" do
    post = Post.new(content: nil)
    expect(post).to_not be_valid
  end
end
