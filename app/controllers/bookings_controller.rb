class BookingsController < ApplicationController

    def show
        @booking = Booking.find(params[:id])
        p @booking
    end

    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        passenger_count = params[:num_tickets].to_i
        passenger_count.times { @booking.passengers.build }
    end
    
    def create
        @booking = Booking.new(bookings_params)
        if @booking.save
            flash[:notice] = "Booking saved."
            redirect_to booking_path(@booking)
        else
            flash[:alert] = "An error occurred."
            render :new
        end
    end

    private

    def bookings_params
        params.require(:booking).permit(:flight_id, :num_tickets, passenger_attributes: [:name, :email])
    end
end
