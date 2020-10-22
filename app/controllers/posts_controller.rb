class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to root_path
    else
      @post = Post.new
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:text,images:[]).merge(user_id:current_user.id)
  end
end
