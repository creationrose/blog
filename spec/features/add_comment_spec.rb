describe "adding a comment process" do

	before do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', with: "test@test.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
  end


  it "adds a comment" do
    post = Post.create(:title => "Hello", :body => "Content")
    visit post_path(post)
    fill_in 'Comment', with: 'Hiya'
    click_on 'Create Comment'
    visit post_path(post)
    expect(page).to have_content 'Hiya'
  end
end
