class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id
  
  #geocoded_by calls the cool_beans method, which just takes the location and destination
  #name, sends it to geocoder, which then does its magic
  geocoded_by :cool_beans

  #after the geocoder 
  after_validation :geocode

  belongs_to :destination
  belongs_to :user
  has_many :likes
  has_many :users_who_liked_it, :through => :likes, :class_name => 'User'
  has_many :comments

  def cool_beans
  	"#{self.location} #{destination.name}"
	end
end
