class FlightsController < ApplicationController

    def index
        vars = request.query_parameters
        matches = Flight.where("start = ? AND end = ?", vars[:from_code], vars[:to_code])
        date_matches = []
        matches.each do |flight|
            date_matches << [flight.id, flight.scheduled.strftime("%m-%d-%Y")]
        end
        id_matches = []
        date_matches.each do |dates|
            if dates[1] == vars[:date]
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

end
