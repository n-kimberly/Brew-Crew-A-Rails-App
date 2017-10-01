require 'rails_helper'

RSpec.describe User, type: :model do

  let(:my_user) {
    create(:user)
  }

  it { is_expected.to have_many(:wikis) }

  describe "attributes" do
    it "should have email and password attributes" do
      expect(my_user).to have_attributes(email: my_user.email, password: my_user.password)
    end
    it "responds to role" do
      expect(my_user).to respond_to(:role)
    end
    it "responds to admin?" do
      expect(my_user).to respond_to(:admin?)
    end
    it "responds to member?" do
      expect(my_user).to respond_to(:premium?)
    end
    it "responds to member?" do
      expect(my_user).to respond_to(:standard?)
    end
  end

  describe "roles" do

    it "is standard by default" do
      expect(my_user.role).to eql("standard")
    end

    context "standard user" do
      it "returns true for #standard?" do
        expect(my_user.standard?).to be_truthy
      end
      it "returns false for #premium?" do
        expect(my_user.premium?).to be_falsey
      end
      it "returns false for #admin?" do
        expect(my_user.admin?).to be_falsey
      end
    end

    context "premium user" do

      before do
        my_user.premium!
      end

      it "returns true for #premium?" do
        expect(my_user.premium?).to be_truthy
      end
      it "returns false for #standard?" do
        expect(my_user.standard?).to be_falsey
      end
      it "returns false for #admin?" do
        expect(my_user.admin?).to be_falsey
      end
    end

    context "admin user" do

      before do
        my_user.admin!
      end

      it "returns true for #admin?" do
        expect(my_user.admin?).to be_truthy
      end
      it "returns false for #standard?" do
        expect(my_user.standard?).to be_falsey
      end
      it "returns false for #premium?" do
        expect(my_user.premium?).to be_falsey
      end
    end

  end

end
