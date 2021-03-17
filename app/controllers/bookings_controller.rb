class BookingsController < ApplicationController

    def show
    end

    def new
        @info = request.query_parameters
        @booking = Booking.new
    end
    
    def create
    end
end
