require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user1) { User.new(fullname: 'Bertil T', username: 'bertil', email: 'bertil@gmail.com') }
  let(:user2) { User.new(fullname: 'Bertil T', username: 'bertil', email: 'bertil@gmail.com') }

  context 'with valid details' do
    it 'creates a user' do
      expect(user1).to be_valid
    end
  end

  context 'uniqueness fields VALID' do
    it 'expects to be valid email when is not a repeated one' do
      user2.email = 'bertil2@gmail.com'
      user2.save
      expect(user2.valid?).to be_truthy
    end

    it 'expects to be valid username when is not a repeated one' do
      user2.username = 'bertil2'
      user2.save
      expect(user2.valid?).to be_truthy
    end
  end

  context 'uniqueness fields INVALID' do
    it 'expects to be invalid email due to has a repeated one' do
      user2.email = 'bertil@gmail.com'
      user2.save
      expect(user1.valid?).to be_falsey
    end

    it 'expects to be invalid username due to has a repeated one' do
      user2.username = 'bertil'
      user2.save
      expect(user1.valid?).to be_falsey
    end
  end

  it { is_expected.to validate_presence_of(:fullname) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:username) }
end
