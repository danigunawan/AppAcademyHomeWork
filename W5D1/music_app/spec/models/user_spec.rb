require 'rails_helper'
require 'support/factory_girl'

RSpec.describe User, type: :model do

  subject(:user) do
    FactoryGirl.build(:user,
      email: 'bob@example.com',
      password: 'good_password')
  end


  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe 'Class Methods' do
    describe '::find_by_credentials' do
      before { user.save! }
      it 'returns user given good credentials' do
        expect(User.find_by_credentials('bob@example.com', 'good_password')).to eq(user)
      end

      it 'returns nil given bad credentials' do
        expect(User.find_by_credentials('bob@example.com', 'bad_password')).to be_nil
      end
    end

    describe '#is_password?' do
      it 'returns true if the password is good' do
        expect(user.is_password?('good_password')).to be true
      end

      it 'returns false if the password is bad' do
        expect(user.is_password?('bad_password')).to be false
      end
    end

    describe '#reset_session_token!' do
      it 'resets the session token' do
        old_token = user.session_token
        user.reset_session_token!
        expect(user.session_token).not_to eq(old_token)
      end
    end
  end
end
