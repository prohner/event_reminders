class Event < ActiveRecord::Base
  belongs_to :person
  
  def next_occurrence_of_event
    year = Date.today.year
    mmdd = event_date.strftime('%m%d')
    year += 1 if mmdd < Date.today.strftime('%m%d')
    mmdd = '0301' if mmdd == '0229' && !Date.parse("#{year}0101").leap?
    return Date.parse("#{year}#{mmdd}")
  end
  
  def years_at_next_occurrence_of_event
    start_year = event_date.year
    next_occurrence_year = next_occurrence_of_event.year
    puts "start_year=#{start_year}, next_occurrence_year=#{next_occurrence_year}"
    return (next_occurrence_year - start_year)
  end
end
