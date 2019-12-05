class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_artists_menu
  before_action :set_locale

  def set_artists_menu
    @artists = Artist.all
    @artists_alpha = @artists.sort_by { |a| a.last_name.downcase}
  end

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end

  def default_url_options
    { host: ENV["HOST"] || "www.dame-jeanne-bordeaux.fr" }
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

end
