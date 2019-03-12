class ArtistsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
