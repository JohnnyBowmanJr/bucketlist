class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id
  
  geocoded_by :cool_beans
  after_validation :geocode

  belongs_to :destination
  has_many :comments

  def cool_beans
  	"#{self.location} #{destination.name}"
	end
end
