describe "delete a post process" do
  it "deletes the post" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    login_as(user, scope: :user)
    visit post_path(post)
    click_on 'Delete this post'
    expect(page).to have_no_content 'Hello'
  end
end
