class Scotch < ActiveRecord::Base
	#mount_uploader :picture, PictureUploader#
	geocoded_by :address
	after_validation :geocode
	acts_as_gmappable :process_geocoding => false
	attr_accessible :area, :address, :taste, :name #:picture

  def gmaps4rails_infowindow
    "<b> #{name}</b>, #{area} <br/> #{taste} "  #<br/> <img src=\"#{self.picture}\">
  end
end


