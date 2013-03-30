class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def directions
  end

  def performers
    @performers = User.find(:all, 
                           :conditions => ["display_public = 't'"])
  end
  
end
