require "rails_helper"

describe Post do

  it { should have_many :comments }

  it { should belong_to :user }

  it "validates presence of content for the title and body of a new post" do
    post = Post.new({ title: "", body: "" })
    expect(post.save).to eq false
  end
end
