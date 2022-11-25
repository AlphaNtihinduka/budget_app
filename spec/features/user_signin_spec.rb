require 'rails_helper'

RSpec.feature 'UserSignins', type: :feature do
  before :each do
    @user = User.new(name: 'NTIHINDUKA ALPHA', email: 'ntihindukaalpha@yahoo.com', password: '1234567890',
                     password_confirmation: '1234567890')
    @user.save
    @user.confirm
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'ntihindukaalpha@yahoo.com'
      fill_in 'user_password', with: '1234567890'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'ntihindukaalpha@yahoo.com'
      fill_in 'user_password', with: '1234567890'
    end
    click_button 'Log in'
    expect(page).to have_content 'Categories'
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'ntihindukaalpha@yahoo.com'
      fill_in 'user_password', with: '1234567890'
    end
    click_button 'Log in'
    expect(page).to have_content(@user.name)
  end
end