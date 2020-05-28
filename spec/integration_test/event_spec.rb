require_relative '../rails_helper.rb'

RSpec.describe 'Events controller', type: :feature do
  before :each do
    User.create(fullname: 'Ana A', username: 'ana', email: 'ana@gmail.com')

    visit root_path
    fill_in 'Username', with: 'ana'
    click_button 'Login'
  end

  scenario 'create a new event' do
    click_link 'New Event'
    fill_in 'event[title]', with: "Ana's Event"
    fill_in 'event[description]', with: 'Como to have a party'
    fill_in 'event[location]', with: 'My house'
    click_button 'Create'
    expect(page).to have_content('All Events')
  end

  scenario 'list events created by the current user' do
    click_link 'My events'
    expect(page).to have_content('My Events')
  end

  scenario 'list attending events of the current user' do
    click_link 'My attending events'
    expect(page).to have_content('Attending Events')
  end
end
