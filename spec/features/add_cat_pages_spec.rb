require 'rails_helper'

describe "the add a cat process" do
  before(:each) do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_email', :with => 'morgan.waites@gmail.com'
    fill_in 'user_password', :with => 'help1234'
    fill_in 'user_password_confirmation', :with => 'help1234'
    click_on 'Sign Up'
  end

  it "adds a new cat" do
    visit cats_path
    click_link 'Add a new cat'
    fill_in 'Name', :with => 'Monkey'
    fill_in 'Breed', :with => 'Cat'
    click_on 'Create Cat'
    # expect(page).to have_content 'cat success!'
    expect(page).to have_content 'Cat'
  end

  # it "gives an error when no name is entered" do
  #   visit new_cat_path
  #   click_on 'Create cat'
  #   expect(page).to have_content "Name can't be blank"
  # end
end