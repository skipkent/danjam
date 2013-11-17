class CommentsController < AdminController
  layout 'backstage'

  # GET /comments
  # GET /comments.json

  def index
    if params[:c_type] == 'song'
      @header_type = 'song'
      @comments = Comment.where(song_id: params[:song_id]).order("updated_at ASC")
      @song = Song.find(params[:song_id])
    elsif params[:c_type] == 'post'
      @header_type = 'post'
      @comments = Comment.where(post_id: params[:post_id]).order("updated_at ASC")
      @post = Post.find(params[:post_id])
    end
    #@post = Post.find(params[:post_id])
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
    if params[:comment_type] == 'song'
      @header_type = 'song'
      @song = Song.find(params[:song_id])
      @comment = Comment.new(song_id: @song.id)    
    elsif params[:comment_type] == 'post'
      @header_type = 'post'
      @post = Post.find(params[:post_id])
      @comment = Comment.new(post_id: @post.id) 
    end
  end

  # GET /comments/1/edit
  def edit
    if params[:comment_type] == 'song'
      @header_type = 'song'
      @comment = Comment.find(params[:id])
      @song = Song.find(params[:song_id])
    elsif params[:comment_type] == 'post'
      @header_type = 'post'
      @comment = Comment.find(params[:id])
      @post = Post.find(params[:post_id])
    end
  end

  # POST /comments
  # POST /comments.json
  def create
      @comment = Comment.new(params[:comment])  

    if @comment.save 
      if @comment.c_type == 'song'
        @comments = Comment.where(:song_id => params[:id])
        @song = Song.find(@comment.song_id) 
        redirect_to comments_index_path(song_id: @song.id, c_type: 'song'), 
          notice: 'Comment was successfully created.'
      elsif @comment.c_type == 'post'
        @comments = Comment.where(:post_id => params[:id])
        @post = Post.find(@comment.post_id) 
        redirect_to comments_index_path(post_id: @post.id, c_type: 'post'),
          notice: 'Comment was successfully created.' 
      end
    else
      render action: "new" 
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      if @comment.c_type == 'song'
        @comments = Comment.where(:song_id => params[:id])
        @song = Song.find(@comment.song_id)
        redirect_to comments_index_path(song_id: @song.id, c_type: 'song'), 
          notice: 'Comment was successfully updated.' 
      elsif @comment.c_type == 'post'
        @comments = Comment.where(:post_id => params[:id])
        @post = Post.find(@comment.post_id)
        redirect_to comments_index_path(post_id: @post.id, c_type: 'post'),
          notice: 'Comment was successfully updated.'
      end
    else
      render action: "edit" 
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    if @comment.c_type == 'song'
      @comments = Comment.where(:song_id => params[:id])
      @song = Song.find(@comment.song_id) 
      redirect_to comments_index_path(song_id: @song.id, c_type: 'song'),
        header_type: 'song', 
        notice: 'Comment was successfully deleted.'
    elsif @comment.c_type == 'post'
      @comments = Comment.where(:post_id => params[:id])
      @post = Post.find(@comment.post_id) 
      redirect_to comments_index_path(post_id: @post.id, c_type: 'post'),
        header_type: 'post', 
        notice: 'Comment was successfully deleted.' 
    end
    #redirect_to comments_url 
  end
end
