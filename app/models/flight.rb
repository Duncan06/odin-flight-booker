class Flight < ApplicationRecord
  belongs_to :airport

  def self.get_scheduled_dates
      scheduled_dates = Flight.find_by_sql("select distinct scheduled from flights where scheduled is not null order by scheduled")
      dates = []
      scheduled_dates.each do |flight|
        dates << flight.scheduled.strftime("%m/%d/%Y")
      end
      dates = dates.uniq
  end

end
