
require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!


describe "the add a comment process" do
   it "adds a new comment to a post", js: true do  
     visit skills_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    click_link 'Blog'
    click_link 'Add Post'
    fill_in 'Title', :with => "my post"
    fill_in 'Body', :with => "my body"
    click_on 'Create Post'
    click_on 'Add comment'
    fill_in 'Content', :with => "a comment"
    click_on 'Create Comment'
    expect(page).to have_content "a comment"
  end

  it "gives an error when no data is entered into form fields", js: true do
    visit skills_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    post = FactoryGirl.create(:post)
    click_link 'Blog'
    click_link 'Add Post'
    fill_in 'Title', :with => post.title
    fill_in 'Body', :with => post.body
    click_on 'Create Post'
    click_on 'Add comment'
    fill_in 'Content', :with => ''
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end

end