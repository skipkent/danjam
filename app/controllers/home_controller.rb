class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def directions
  end

  def performers
    @performers = User.all
  end
  
end
