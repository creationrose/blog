describe "the edit a post process" do

  it "edits a post title" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    login_as(user, scope: :user)
    visit edit_post_path(post)
    fill_in 'Title', :with => 'Goodbye'
    click_on 'Update Post'
    expect(page).to have_content 'Goodbye'
  end

  it "edits a post body" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user: user)
    login_as(user, scope: :user)
    visit edit_post_path(post)
    fill_in 'Body', :with => 'No more good content'
    click_on 'Update Post'
    expect(page).to have_content 'No more good content'
  end
end