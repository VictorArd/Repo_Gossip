require 'rails_helper'

RSpec.describe "bienvenue/user", type: :view do
  
  context 'it says welcome' do
    it "displays 'welcome'" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content 'Bienvenue'
    end
  end

  context 'it says the name' do
    it "displays 'welcome #name#" do
      # génére la page
      render
  
      # le contenu "Bievenue" doit être dans la page
      expect(rendered).to have_content "Bienvenue #{params[:name]}" 
    end
  end

end
