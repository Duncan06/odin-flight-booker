class FlightsController < ApplicationController

    def index
        vars = request.query_parameters
        @flights = Flight.where("start = ? AND end = ? AND scheduled = ?", vars[:from_code], vars[:to_code], vars[:date])
    end

    def show
    end

end
