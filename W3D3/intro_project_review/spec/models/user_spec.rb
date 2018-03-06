require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(password: 'password', email: 'test@test.test') }

  describe "Validations" do
    it "is valid with valid input" do
      expect(subject).to be_valid
    end

    it "is not valid if no password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid if no email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it { should allow_value('valid@email.com').for(:email)}
  end
end
