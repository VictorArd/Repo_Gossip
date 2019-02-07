class PotinController < ApplicationController
  def show
  	@potin = Potin.find(params[:id].to_i)
    @city = City.all
  end

  def new
    puts '$' * 60
    puts params
    @users = User.all
    @cities = City.all
    @potin = Potin.new

  end

  def create
    puts '$' * 60
    puts params
    @users = User.all
    @cities = City.all
    @potin = Potin.new(title: params[:titre], content: params[:content], user: User.find(params[:auteur]), city: City.find(params[:city]))
    if @potin.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:notice] = "Ton gossip a bien été créé !"
      redirect_to root_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :new
    end
  end
end
