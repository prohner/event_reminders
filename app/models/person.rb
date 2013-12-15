class Person < ActiveRecord::Base
  has_many :events
  
  def full_name
    first_name.strip + " " + last_name.strip
  end
end
