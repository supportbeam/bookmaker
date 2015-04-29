class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry for debugging lines of code
    if @user.save
      redirect_to restaurants_url, notice:"Signed up!"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    # @reservations = Reservation.find(params[@user.id])
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
