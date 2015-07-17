require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!


describe "the edit a comment process" do
  it "edit a new comment to a post", js: true do  
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
    click_link 'Edit Comment'
    fill_in 'Content', :with => 'new comment'
    click_on 'Update Comment'
    expect(page).to have_content 'new comment'
  end

  it "gives an error when no data is entered into form fields", js: true do
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
    click_on 'a comment'
    click_link 'Edit Comment'
    fill_in "comment[content]", :with => ''
    click_on 'Update Comment'
    expect(page).to have_content 'What do you think you are doing'
   end

end

