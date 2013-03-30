class ChordsController < AdminController
  layout 'backstage'

  def index
    @song = Song.find(params[:id])
  end

end
