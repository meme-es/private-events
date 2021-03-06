require_relative '../rails_helper'

RSpec.describe Event, type: :model do
  before :each do
    @user1 = User.new(fullname: 'Juan Spencer', username: 'jspencer', email: 'spencer@gmail.com')

    @event1 = Event.new(title: "David's Birthday", description: 'Comming to celebrate my birthday.')
    @event1.location = 'My home'
    @event1.date = 1.day.after
    @event1.user_id = 1
  end

  context 'when a new event is creating for a given user' do
    it 'is valid with valid attributes' do
      @user1.save
      expect(@event1).to be_valid
    end

    it 'is invalid with description attribute less than 10 characters' do
      @user1.save
      @event1.description = 'Party'
      expect(@event1).to_not be_valid
    end

    it 'is invalid with description attribute more than 250 characters' do
      @user1.save
      @event1.description = 'a' * 251
      expect(@event1.valid?).to eq(false)
    end

    it 'is invalid without a title attribute' do
      @user1.save
      @event1.title = nil
      expect(@event1).to_not be_valid
    end

    it 'is invalid without a description attribute' do
      @user1.save
      @event1.description = nil
      expect(@event1).to_not be_valid
    end
  end

  describe 'in terms of association, for every event created' do
    it 'belongs to an user host' do
      assc = Event.reflect_on_association(:creator)
      expect(assc.macro).to eq :belongs_to
    end

    it 'could have many attendances' do
      assc = Event.reflect_on_association(:attendances)
      expect(assc.macro).to eq :has_many
    end

    it 'could have many attendees' do
      assc = Event.reflect_on_association(:attendees)
      expect(assc.macro).to eq :has_many
    end
  end

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:location) }
  it { is_expected.to validate_presence_of(:date) }
end
