require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) { User.new(fullname: 'Bertil T', username: 'bertil', email: 'bertil@gmail.com') }

  context 'with valid details' do
    it 'creates a user' do
      expect(user).to be_valid
    end
  end

  it { is_expected.to validate_presence_of(:fullname) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_presence_of(:username) }
end
