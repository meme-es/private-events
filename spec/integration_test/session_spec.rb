require_relative '../rails_helper.rb'

RSpec.describe 'Sessions controller', type: :feature do
  before :each do
    User.create(fullname: 'Ana A', username: 'ana', email: 'ana@gmail.com')
  end

  scenario 'signs me in' do
    visit root_path
    fill_in 'Username', with: 'ana'
    click_button 'Login'
    expect(page).to have_content('All Events')
  end
end
