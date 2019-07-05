class Product < ApplicationRecord
	validates :title, :description, :vid, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.1}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'URL must be gif, jpg, png'}
end

