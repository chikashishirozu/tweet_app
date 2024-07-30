# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  
  def index
    @posts = Post.order(created_at: :desc) # 投稿を新しい順に取得
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, notice: '投稿が作成されました'
    else
      render :new
    end
  end
  
  def show
    @post = Post.find_by(id: params[:id])
    unless @post
      flash[:alert] = "指定された投稿は存在しません。"
      redirect_to root_path
    end
  end
  
  def edit
    logger.debug "Edit action called with params: #{params.inspect}"
    @post = Post.find_by(id: params[:id])
    unless @post
      flash[:alert] = "指定された投稿は存在しません。"
      redirect_to root_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, notice: '投稿が更新されました'
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path, notice: '投稿が削除されました'
    else
      redirect_to posts_path, alert: '投稿の削除に失敗しました'
    end
  end 

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
