class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :check_already_posted, only: [:new]
  before_action :check_today, only: [:edit, :update]
  before_action :authenticate_user!
  before_action :action_before_authentication, only: [:edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = current_user.post
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def check_already_posted
      @user_post = current_user.post
      @post = @user_post.today
      if @post.count > 0
        respond_to do |format|
          format.html { redirect_to posts_path, notice: 'You have already posted today' }
          format.json { head :no_content }
        end
      end
    end

    def check_today
      @post = Post.find(params[:id])
      if @post.created_at.to_date != Time.now.utc.to_date
        respond_to do |format|
          format.html { redirect_to posts_path, alert: "Sorry, you can only update a post writed today" }
          format.json { head :no_content }
        end
      end
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:content, :user_id, :word_count, :character_count)
    end

    def action_before_authentication
      if current_user.id != @post.user_id
        redirect_to(posts_path, alert: "Sorry, this is not your post")
      end
    end
end
