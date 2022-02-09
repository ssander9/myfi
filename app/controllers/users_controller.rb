class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @user.update(edit_user_params)
      redirect_to user_path(@user.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def edit_user_params
    params.require(:user).permit(:name, :email)
  end

end
