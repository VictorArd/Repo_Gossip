class StaticPagesController < ApplicationController
  
  def accueil
    @potins = Potin.all
  end

  def team
  end

  def contact
  end

  def contact_post
    puts '$' * 60
    puts params
  end


end
