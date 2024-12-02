# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_post, only: [:edit, :update, :destroy, :show]
  before_action :authorize_user!, only: [:edit, :update, :destroy]
  
  def index
    @posts = Post.order(created_at: :desc) # 投稿を新しい順に取得
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params) # 現在のユーザーと紐付ける
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
    # `set_post` が既に呼ばれているため、ここで再定義は不要
    logger.debug "Edit action called with params: #{params.inspect}"
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: '投稿が更新されました'
    else
      render :edit
    end
  end
  
  def destroy
    if @post.destroy
      redirect_to posts_path, notice: '投稿が削除されました'
    else
      redirect_to posts_path, alert: '投稿の削除に失敗しました'
    end
  end 

  private

  def authorize_user!
    unless @post.user == current_user
      flash[:alert] = '権限がありません。'
      redirect_to posts_path
    end
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
  
  def set_post
    @post = Post.find_by(id: params[:id])
    unless @post
      flash[:alert] = "指定された投稿は存在しません。"
      redirect_to root_path
    end
  end  
end

