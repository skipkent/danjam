class PerformancesController < ApplicationController

  def index
    @song = Song.find(params[:song_id])
    @performance = Performance.find(params[:song_id])
  end

end
