class ApplicationController < ActionController::Base

  before_action :set_artists_menu

  def set_artists_menu
    @artists = Artist.all
    @artists_alpha = @artists.sort_by { |a| a.last_name.downcase}
  end
end
