class PotinController < ApplicationController
  def show
  	@potin = Potin.find(params[:id])
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
    @potin = Potin.new(title: params[:title], content: params[:content], user: User.find(params[:author]))
    if @potin.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:success] = "Ton gossip a bien été créé !"
      redirect_to root_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      flash[:danger] = "Une erreur à survenu, recommencez"
      render :new
    end
  end

  def edit
    @potin = Potin.find(params[:id])
  end

  def update
    @potin = Potin.find(params[:id])
    potin_params = params.require(:potin).permit(:title, :content)
    if @potin.update(potin_params) # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:notice] = "Ton gossip a bien été modifié !"
      redirect_to root_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :edit
    end
  end

  def destroy
    @potin = Potin.find(params[:id])
    if @potin.destroy # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:notice] = "Ton gossip a bien été supprimé !"
      redirect_to root_path
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :show
    end
  end

end
