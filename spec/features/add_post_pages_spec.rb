require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_on 'Add a new post'
    fill_in 'Title', :with => 'Hello'
    fill_in 'Body', :with => 'Content'
    click_on 'Create Post'
    expect(page).to have_content 'Hello'
  end

  it "refreshes to same page when no content is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'New Post'
  end
end
