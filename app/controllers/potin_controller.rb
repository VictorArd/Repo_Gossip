class PotinController < ApplicationController
  def show
  	@potin = Potin.find(params[:id].to_i)
  end

  def new
    puts '$' * 60
    puts params
    @users = User.all
    @potin = Potin.new
    
  end

  def create
    @potin = Potin.new() # avec xxx qui sont les données obtenues à partir du formulaire
  
    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end
end