class PotinController < ApplicationController
  def show
  	@potin = Potin.find(params[:id].to_i)
  end
end