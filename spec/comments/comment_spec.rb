require "rails_helper"

describe Comment do
  it { should belong_to :post }
<<<<<<< HEAD
=======
  
  it { should belong_to :user }
>>>>>>> 251ce9a

  it "validates presence of comment" do
    comment = Comment.new({ comment: "" })
    expect(comment.save).to eq false
  end
end
