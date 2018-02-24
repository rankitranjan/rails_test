class User < ApplicationRecord
	has_many :addresses

	validates :first_name, presence: true
	validates :age, presence: true

	def full_name
	  [first_name, middle_name, last_name].compact.join(" ")
	end

	def self.children
		where(age: 0..8).order("lower(first_name) ASC")
	end

	def self.adolescenents
		where(age: 9..18).order("lower(first_name) ASC")
	end

	def self.adults
		where("age >= 19").order("lower(first_name) ASC")
	end
end
