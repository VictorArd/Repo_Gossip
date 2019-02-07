class StaticPagesController < ApplicationController

  def team
  end

  def contact
  end

  def contact_post
    puts '$' * 60
    puts params
  end


end
