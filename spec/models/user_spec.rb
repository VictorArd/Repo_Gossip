require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do

    @user = FactoryBot.create(:user)

  end

  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
    end
  end

  describe "#first_name" do
      it "should not be valid without first_name" do
        bad_f_name = User.create(l_name: "nom")
        expect(bad_f_name).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_f_name.errors.include?(:f_name)).to eq(true)
      end
    end

  describe "#last_name" do
      it "should not be valid without last_name" do
        bad_l_name = User.create(f_name: "prenom")
        expect(bad_l_name).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_l_name.errors.include?(:l_name)).to eq(true)
      end
    end
    

end