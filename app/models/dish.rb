class Dish < ActiveRecord::Base
	validates :image, presence: true
	validates :name, presence: true
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "640x" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	has_many :comments, dependent: :destroy
end
