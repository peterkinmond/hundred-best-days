class Event < ActiveRecord::Base
  belongs_to :user

  def self.range_of_years(events)
    earliest_event_year = events.map{|e| e.date.year}.min
    current_year = Time.now.year

    (earliest_event_year..current_year).to_a
  end
end
