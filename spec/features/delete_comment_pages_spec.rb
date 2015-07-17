require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!


describe "the delete a comment process" do
  it "delete a comment from a post", js: true  do  
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
    click_link 'a comment'
    click_link 'Delete'
    expect(page).to have_content 'Admin Page'
  end
end

