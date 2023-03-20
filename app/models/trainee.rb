class Trainee < ApplicationRecord

	validates :name, :email, presence: true
	validates :address, :contact_number, :college_name, :course_name, presence: true
end
	