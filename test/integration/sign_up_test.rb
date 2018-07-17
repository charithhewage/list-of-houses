require 'test_helper'

class SignUpTest < ActionDispatch::IntegrationTest
  setup do
    @user = users :one
  end

  test 'fill in the form' do
    visit new_user_registration_path

    fill_in 'First name', with: @user.first_name
    fill_in 'Last name', with: @user.last_name
    fill_in 'Email', with: @user.email

    # XXX: It must be ready to run with fixtures
    fill_in 'Password', with: 'secretPassw0rd'
    fill_in 'Password confirmation', with: 'secretPassw0rd'

    click_button 'Sign up'
  end
end
