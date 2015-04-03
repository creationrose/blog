describe "adding a comment process" do

  it "adds a comment" do
    post = Post.create(:title => "Hello", :body => "Content")
    visit post_path(post)
    fill_in 'Comment', with: 'Hiya'
    click_on 'Create Comment'
    visit post_path(post)
    expect(page).to have_content 'Hiya'
  end
end
