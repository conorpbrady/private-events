class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      # log in
    else
      render 'users/new'
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    @events = @user.events
  end

  private
    def user_params
      params.require(:user).permit(:name, :email)
    end

end
