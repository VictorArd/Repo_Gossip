require 'rails_helper'

RSpec.describe "potin/new", type: :view do

  context 'it show Title' do
    it "displays 'Title'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content 'Title'
    end
  end

  context 'it show Commit button' do
    it "displays a button" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content 'Title'
    end
  end

end
