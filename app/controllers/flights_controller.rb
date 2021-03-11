class FlightsController < ApplicationController

    def index
        vars = request.query_parameters
        @flights = Flight.where("start = ? AND end = ?", vars[:from_code], vars[:to_code])
    end

    def show
    end

end
