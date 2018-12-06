class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    @artists_alpha = @artists.sort_by { |a| a.last_name}
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
