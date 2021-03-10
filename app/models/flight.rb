class Flight < ApplicationRecord
  belongs_to :airport

  def flight_date_formatted
    scheduled.strftime("%m/%d/%Y %H:%M")
  end

  def self.get_scheduled_dates
      scheduled_dates = Flight.find_by_sql("select scheduled from flights where scheduled is not null order by scheduled")
  end

end
