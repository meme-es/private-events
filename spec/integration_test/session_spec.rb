require_relative '../rails_helper.rb'

RSpec.describe 'Sessions controller', type: :feature do
  scenario 'create a new user using the signup page' do
    visit signup_path
    fill_in 'user[fullname]', with: 'Ana Rivas'
    fill_in 'user[username]', with: 'ana'
    fill_in 'user[email]', with: 'ana@email.com'
    click_button 'Create User'
    expect(page).to have_content('Login')
  end

  scenario 'when a user login' do
    User.create(fullname: 'Ana A', username: 'ana', email: 'ana@gmail.com')

    visit root_path
    fill_in 'Username', with: 'ana'
    click_button 'Login'
    expect(page).to have_content('All Events')
  end

  scenario 'when a user log out' do
    User.create(fullname: 'Ana A', username: 'ana', email: 'ana@gmail.com')

    visit root_path
    fill_in 'Username', with: 'ana'
    click_button 'Login'
    click_link 'Log Out'
    expect(page).to have_content('Login')
  end
end
