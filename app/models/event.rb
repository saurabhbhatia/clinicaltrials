class Event < ActiveRecord::Base
geocoded_by :location
after_validation :geocode   
  paginates_per 5

end
