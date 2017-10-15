class CollaborationsController < ApplicationController
  def create
    @wiki = Wiki.find(params[:wiki_id])
    @user = User.find(params[:id])
    @collaboration = @wiki.collaborations.new(wiki_id: @wiki.id, user_id: @user.id)
    if @collaboration.save
      flash[:notice] = "#{@user.email} has been added as collaborator."
    else
      flash[:error] = "There was a problem adding #{@user.email}. Please try again."
    end
    redirect_to @wiki
  end

  def destroy
    @wiki = Wiki.find(params[:wiki_id])
    @collaboration = Collaboration.find(params[:id])
    @user = User.find_by_id(@collaboration.user_id)
    if @collaboration.destroy
      flash[:notice] = "#{@user.email} has been removed as collaborator."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was a problem removing user Please try again."
      redirect_to @wiki
    end
  end
end
