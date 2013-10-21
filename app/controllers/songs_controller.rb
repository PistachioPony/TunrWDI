class SongsController < ApplicationController
  before_action :authenticated!, only: [:purchase]

  def show
    @song = Song.find(params[:id])
  end

  def purchase
    @song = Song.find(params[:id])
    binding.pry
    # current_user.purchase(@song)
  end
end