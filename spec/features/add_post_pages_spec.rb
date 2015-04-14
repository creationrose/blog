feature 'index page' do
  let(:user) { FactoryGirl.create(:user) }

  context 'with an authenticated user' do
    scenario 'shows new form' do
      login_as(user, scope: :user)
      visit root_path
      expect(page).to have_content "Dev"
     end
  end

  scenario "Log in a user" do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in "Password", with: user.password
    click_on "Log in"
    expect(page).to have_content "successfully"
  end


  scenario 'creates a new post' do
      login_as(user, scope: :user)
      visit root_path
      click_on 'Add a new post'
      fill_in 'Title', :with => 'Hello'
      fill_in 'Body', :with => 'Content'
      click_on 'Create Post'
      expect(page).to have_content "Content"
    end
 end



describe "the add a post process" do
  before do
    visit '/'
    click_link 'Sign Up'
    fill_in 'Email', with: "test@test.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_on "Sign up"
    end

  it "adds a new post" do
    post = FactoryGirl.build(:post)
    visit root_path
    click_on 'Add a new post'
    fill_in 'Title', :with => post.title
    fill_in 'Body', :with => post.body
    click_on 'Create Post'
    expect(page).to have_content 'Hello'
  end

  it "refreshes to same page when no content is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'New Post'
  end
end


def create_new_user
  visit '/'
  click_link 'Sign Up'
  fill_in 'Email', with: "test@test.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_on "Sign up"
end