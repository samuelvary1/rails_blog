class Image < ActiveRecord::Base
	belongs_to :article
	mount_uploader :image, ImageUploader

	private
	def image_params
		params.require(:image).permit(:article_id, :name)	
	end

end
