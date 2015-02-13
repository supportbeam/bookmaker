class ReservationsController < ApplicationController
	before_filter :ensure_logged_in, only: [:create, :destroy]
	before_filter :load_restaurant

	def new
    @reservation = Reservation.new
  end

  def create
  	@reservation = @restaurant.reservations.build(reservation_params)
  	# @reservation.user = current_user
		if @reservation.save
  		redirect_to restaurant_path(params[:restaurant_id])
  	else
  		flash[:alert] = @reservation.errors.full_messages.to_sentence
  		render :new
  	end
  end

	def destroy
		@reservation = Reservation.find(params[:id])
		@reservation.destroy
		redirect_to restaurant_path

	end

 private
  def reservation_params
  	params.require(:reservation).permit(:party_size, :date, :time)
  end

  def load_restaurant
  	@restaurant = Restaurant.find(params[:restaurant_id])
  end
end
