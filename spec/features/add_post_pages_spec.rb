feature 'index page' do
  context 'with an authenticated user' do
    scenario 'shows new form' do
      create_new_user
      visit root_path
      expect(page).to have_content "Dev"
     end
  end

  # scenario "Log in a user" do
  #   create_new_user
  #   click_link 'Sign In'
  #   fill_in 'Email', with: "test@test.com"
  #   fill_in "Password", with: "password"
  #   click_on "Log in"
  #   expect(page).to have_content "successfully"
  # end


  scenario 'creates a new post' do
      create_new_user
      visit "/"
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
    
  # it "adds a new post" do
  #   visit new_posts_path
  #   click_on 'Add a new post'
  #   fill_in 'Title', :with => 'Hello'
  #   fill_in 'Body', :with => 'Content'
  #   click_on 'Create Post'
  #   expect(page).to have_content 'Hello'
  # end

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