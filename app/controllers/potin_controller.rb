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
    puts '$' * 60
    puts params
    @users = User.all
    @potin = Potin.new(title: params[:titre], content: params[:content], user: User.find(params[:auteur]))
    if @potin.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      redirect_to :accueil
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :new
    end
  end
end