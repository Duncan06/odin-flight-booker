class FlightsController < ApplicationController

    def index
        matches = Flight.where("start = ? AND end = ?", params[:from_code], params[:to_code])
        date_matches = []
        matches.each do |flight|
            date_matches << [flight.id, flight.scheduled.strftime("%m-%d-%Y")]
        end
        id_matches = []
        date_matches.each do |dates|
            if dates[1] == params[:date]
                id_matches << dates[0]
            end
        end
        @flights = []
        id_matches.each do |match|
            @flights << Flight.find(match)
        end
    end

    def show
    end

    private 
    
    def flight_params
        params.require(:flight).permit(:to_code, :from_code, :date)
    end

end
