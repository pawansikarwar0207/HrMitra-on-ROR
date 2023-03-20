class WelcomeController < ApplicationController
	before_action :authenticate_student_user!	
	def index
		
	end

end
