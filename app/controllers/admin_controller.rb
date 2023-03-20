class AdminController < ApplicationController

	before_action :authenticate_student_user!

	# if user_signed_in?
	# else
	# 	redirect_to new_student_user_session_path
	# end

end
