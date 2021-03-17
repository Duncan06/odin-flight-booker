class BookingsController < ApplicationController

    def show
    end

    def new
        @info = request.query_parameters
        @booking = Booking.new
        @info[:num_tickets].times { @booking.passenger.build }
    end
    
    def create
    end
end
