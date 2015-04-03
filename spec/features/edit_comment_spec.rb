describe "editing a comment process" do
  it "edits the comment" do
    post = Post.create(title: "Hello", body: "Content")
    comment = Comment.create(comment: "Hi", post_id: post.id)
    visit post_path(post)
    click_on 'Edit Comment'
    fill_in 'Comment', with: 'No more awesomeness'
    click_on 'Update Comment'
    visit post_path(post)
    expect(page).to have_content 'No more awesomeness'
  end
end
