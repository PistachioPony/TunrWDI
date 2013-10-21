class SongsController < ApplicationController
  before_action :authenticated!, only: [:purchase]

  def show
    @song = Song.find(params[:id])
  end

  def purchase
    @song = Song.find(params[:id])
    
    # current_user.purchase(@song)
  end
end