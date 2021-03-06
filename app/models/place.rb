class Place < ApplicationRecord
	paginates_per 5

	belongs_to :user
	has_many :comments
	has_many :photos

	geocoded_by :address
	after_validation :geocode

	validates :name, presence: true, length: {minimum: 2}
	validates :description, presence: true, length: {minimum: 10, maximum:1500}
	validates :address, presence: true, length: {minimum: 10}
end
