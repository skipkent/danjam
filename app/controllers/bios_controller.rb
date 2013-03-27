class BiosController < ApplicationController
  
  def index
    @users = User.all
  end
end
