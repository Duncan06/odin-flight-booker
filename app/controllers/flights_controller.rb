class FlightsController < ApplicationController

    def index
        @flights = Flight.all
    end

    def show
    end

    def search
        vars = request.query_parameters
        @flights = Flight.where("start = ? AND end = ? AND scheduled = ?", vars[from_code], vars[to_code], vars[date])
    end

end
