class UsersController < ApplicationController
  before_action :login_required, only: [:show, :edit, :update, :destroy]
  before_action :ensure_correct_user, only: [:show]
  #不要
  #def index
    #@users = current_users
  #end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to jobs_path, notice: "ユーザー「#{@user.name}」を登録しました"
      session[:user_id] = @user.id
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to show, notice: "ユーザー「#{@user.name}」を更新しました"
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: "ユーザー「#{@user.name}」を削除しました"
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :company, :business)
  end

end
