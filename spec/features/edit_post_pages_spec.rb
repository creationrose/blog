describe "the edit a post process" do

  it "edits a post title" do
    post = Post.create(:title => 'Hello', :body => "Content")
    visit edit_post_path(post)
    fill_in 'Title', :with => 'Goodbye'
    click_on 'Update Post'
    expect(page).to have_content 'Goodbye'
  end

  it "edits a post body" do
    post = Post.create(:title => 'Hello', :body => "Content")
    visit edit_post_path(post)
    fill_in 'Body', :with => 'No more good content'
    click_on 'Update Post'
    expect(page).to have_content 'No more good content'
  end
end
