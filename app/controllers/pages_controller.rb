class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:about, :contact, :shops]

  def about; end

  def contact; end

  def shops; end

end
