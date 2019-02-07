class AccueilController < ApplicationController

  def index
    @potins = Potin.all
  end

end
