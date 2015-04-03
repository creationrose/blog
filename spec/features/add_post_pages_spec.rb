feature 'index page' do
  context 'with an authenticated user' do
    scenario 'shows new form' do
      create_new_user
      visit '/'
      expect(page).to have_content "Dev"
    end
  end



    scenario 'creates a new post' do
      create_new_user
      visit new_post_path
      click_on 'Add a new post'
      fill_in 'Title', :with => 'Hello'
      fill_in 'Body', :with => 'Content'
      click_on 'Create Post'
      expect(page).to have_content "Something"
    end
  
end

# describe "the add a post process" do
#   it "adds a new post" do
#     visit posts_path
#     # user = FactoryGirl.create(:user)
#     # post = FactoryGirl.create(:post)
#     click_on 'Add a new post'
#     fill_in 'Title', :with => 'Hello'
#     fill_in 'Body', :with => 'Content'
#     click_on 'Create Post'
#     expect(page).to have_content 'Hello'
#   end

#   it "refreshes to same page when no content is entered" do
#     visit new_post_path
#     click_on 'Create Post'
#     expect(page).to have_content 'New Post'
#   end
# end


def create_new_user
  visit '/'
  click_link 'Register'
  fill_in 'Email', with: "test@test.com"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
  click_on "Sign up"
end