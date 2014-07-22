class Image < ActiveRecord::Base
	attr_accessible :name, :image, :remote_image_url
	belongs_to :article
	mount_uploader :image, ImageUploader
end
