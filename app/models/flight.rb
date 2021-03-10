class Flight < ApplicationRecord
  belongs_to :airport

  def flight_date_formatted
    scheduled.strftime("%B %d, %Y")
  end

  def self.get_scheduled_dates
      scheduled_dates = Flight.find_by_sql("select distinct scheduled from flights where scheduled is not null order by scheduled")
      dates = []
      scheduled_dates.each do |flight|
        dates << flight.scheduled.to_date
      end
      dates = dates.uniq
  end

end
