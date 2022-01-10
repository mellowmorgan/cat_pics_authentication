require 'rails_helper'


describe "the signup a user process" do
  before(:each) do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_email', :with => 'morgan.waites@gmail.com'
    fill_in 'user_password', :with => 'help1234'
    fill_in 'user_password_confirmation', :with => 'help1234'
    click_on 'Sign Up'
    click_link 'Sign out'
  end

  it "shows the user email on page" do
    visit '/'
    click_link 'Sign in'
    fill_in 'email', :with => 'morgan.waites@gmail.com'
    fill_in 'password', :with => 'help1234'
    click_button 'Sign in'
    expect(page).to have_content "morgan.waites@gmail.com"
  end
end