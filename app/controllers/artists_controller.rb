class ArtistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.includes(:artist, :posters)
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
