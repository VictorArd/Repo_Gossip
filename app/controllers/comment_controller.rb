class CommentController < ApplicationController

  def new
    puts '$' * 60
    puts params
    @comment = Comment.new
  end

  def create
    puts '$' * 60
    puts params
    @comment = Comment.new(content: params[:content], user: User.last, potin: Potin.last )
    if @comment.save # essaie de sauvegarder en base @gossip
      flash[:notice] = "Ton commentaire a bien été créé !"
      redirect_to root_path
    else
      render :new
    end

  end

end
