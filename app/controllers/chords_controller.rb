class ChordsController < ApplicationController
  layout 'backstage'

  def index
    @song = Song.find(params[:id])
  end

end
