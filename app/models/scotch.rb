class Scotch < ActiveRecord::Base
	#mount_uploader :picture, PictureUploader#
	geocoded_by :address
	after_validation :geocode
	acts_as_gmappable :process_geocoding => false
	attr_accessible :area, :address, :taste, :name #:picture

  def gmaps4rails_infowindow
  # add here whatever html content you desire, it will be displayed when users clicks on the marker
  "<b> #{name}</b>, #{area} <br/> #{taste}"
  end
end


