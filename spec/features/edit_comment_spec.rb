describe "editing a comment process" do

  before do
    visit '/'
    click_link 'Sign Up'
    user = FactoryGirl.create(:user)
    fill_in 'Email', with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password
    click_on "Sign up"
  end

  # it "edits the comment" do
  #   post = Post.create(title: "Hello", body: "Content")
  #   comment = Comment.create(comment: "Hi", post_id: post.id)
  #   visit post_path(post)
  #   click_on 'Edit Comment'
  #   fill_in 'Comment', with: 'No more awesomeness'
  #   click_on 'Update Comment'
  #   visit post_path(post)
  #   expect(page).to have_content 'No more awesomeness'
  # end
end
