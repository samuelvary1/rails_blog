class Article < ActiveRecord::Base
	# this is where you define the class for methods in the controller
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end