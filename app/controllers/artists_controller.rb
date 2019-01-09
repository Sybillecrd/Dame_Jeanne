class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @artists_alpha = @artists.sort_by { |a| a.last_name.downcase}
    @projects = Project.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
