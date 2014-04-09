class UsersController < ApplicationController

  before_action :require_authentication, only: [:edit, :update, :destroy]

  def index
    @users = User.all

  end

  def show
    @user = User.find(params[:id])
    @links = Link.where(:user_id => params[:id])
  end

  def new
    redirect_to root_path if current_user
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    render 'edit'
  end

  def update
    @user = User.find(params[:id])

      @user.update(user_params)
      redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end


  private

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    
  end

end
