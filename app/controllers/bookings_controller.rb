class BookingsController < ApplicationController

    def show
    end

    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
        passenger_count = params[:num_tickets].to_i
        passenger_count.times { @booking.passengers.build }
    end
    
    def create
    end

    private

    def bookings_params
        params.require(:booking).permit(:flight_id, :num_tickets, passenger_attributes: [:name, :email])
    end
end
