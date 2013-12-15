class Person < ActiveRecord::Base
  
  def full_name
    first_name.strip + " " + last_name.strip
  end
end
