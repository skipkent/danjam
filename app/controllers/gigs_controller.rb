class GigsController < ApplicationController
  layout 'backstage'
  
  def index
    @gigs = Gig.find(:all, :order => 'id DESC')
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(params[:gig])
    if @gig.save
      redirect_to :action => 'show', :id => @gig
    else
      render :action => 'new'
    end
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])
    if @gig.update_attributes(params[:gig])
      redirect_to :action => 'show', :id => @gig
    else
      rrender :action => 'edit'
    end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to :action => 'index'
  end
  
end
