class Address < ApplicationRecord
	belongs_to :user

	validates :name, presence: true
	validates :line1, presence: true
	validates :city, presence: true
	validates :state, presence: true
	validates :country, presence: true
	validates :zip, presence: true

end
