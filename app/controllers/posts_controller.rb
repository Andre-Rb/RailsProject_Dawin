class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @posts = Post.all
    respond_with(@posts)
  end

  def show
    @post = Post.find params[:id]
    @writingUser = User.find(@post.user_id)
    respond_with(@post, @writingUser)
  end

  def new
    @post = Post.new

    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.publishDate = DateTime.now.utc
    @post.user_id = current_user.id
    # TODO miniature
    @post.save
    respond_with(@post)
  end

  def update
    @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:titre, :user_id, :header, :postImage, :publishDate, :content)
    end
end
