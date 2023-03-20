class Student < ApplicationRecord

	has_many :documents

	validates :first_name, :middle_name, :last_name, presence:true
	validates :personal_email, :contact_number, presence:true
	validates :address_line_1, :address_line_2, presence: true
	validates :city, :state, :country, :zipcode, presence: true




	def self.ransackable_associations(auth_object = nil)
	  []
	end

	def self.ransackable_attributes(auth_object = nil)
	  ["address_line_1", "address_line_2", "city", "contact_number", "country", "created_at", "first_name", "id", "last_name", "middle_name", "personal_email", "state", "updated_at", "zipcode"]
	end

	def full_name
		"#{first_name} #{middle_name} #{last_name}"
	end

	def full_address
		"#{address_line_1} #{address_line_2} #{city} #{state} #{country} #{zipcode}"
	end

end