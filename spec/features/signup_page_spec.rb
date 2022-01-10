require 'rails_helper'

describe "the signup a user process" do
  it "shows the user email on page" do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_email', :with => 'morgan.waites@gmail.com'
    fill_in 'user_password', :with => 'help1234'
    fill_in 'user_password_confirmation', :with => 'help1234'
    click_on 'Sign Up'
    expect(page).to have_content "morgan.waites@gmail.com"
  end
end