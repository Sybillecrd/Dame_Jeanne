class ArtistsController < ApplicationController
  def index
    @projects = Project.includes(:artist, :posters)
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
