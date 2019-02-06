require 'rails_helper'

RSpec.describe Potin, type: :model do

  before(:each) do

    @potin = FactoryBot.create(:potin)

  end

  it 'has a valid factory' do
    expect(build(:potin)).to be_valid
  end

  context "validation" do
    it "is valid with valid attributes" do
      expect(@potin).to be_a(Potin)
    end
  end

  describe "#title" do
      it "should not be valid without title" do
        bad_title = Potin.create(title: "Da")
        expect(bad_title).not_to be_valid
        # test très sympa qui permet de vérifier que la fameuse formule user.errors retourne bien un hash qui contient une erreur concernant le first_name. 
        expect(bad_title.errors.include?(:title)).to eq(true)
      end
    end


end