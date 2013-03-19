class CommentsController < ApplicationController
  layout 'backstage'

  # GET /comments
  # GET /comments.json

  def index
    @comments = Comment.where(song_id: params[:song_id])
    @song = Song.find(params[:song_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
    #@song = Song.find(params[:song_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  def list
    @comments = Comment.where(:song_id => params[:id])
    @song = Song.find(params[:id])
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @song = Song.find(params[:song_id])
    @comment = Comment.new(song_id: @song.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
    @song = Song.find(params[:song_id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @comments = Comment.where(:song_id => params[:id])
    @song = Song.find(@comment.song_id)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to comments_index_path(:song_id => @song.id), 
          notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    @song = Song.find(@comment.song_id)

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to comments_index_path(:song_id => @song.id), 
          notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
