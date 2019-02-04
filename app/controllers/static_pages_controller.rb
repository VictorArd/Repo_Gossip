class StaticPagesController < ApplicationController
  
  def accueil
    @title = Potin.first
    @content = Potin
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
