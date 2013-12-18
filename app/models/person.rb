class Person < ActiveRecord::Base
  has_many :events
  
  def full_name
    first_name.strip + " " + last_name.strip
  end
  
  def events_as_string
    descriptions = events.map { |event| event.description }
    descriptions.sort.join(" / ")
  end
end
