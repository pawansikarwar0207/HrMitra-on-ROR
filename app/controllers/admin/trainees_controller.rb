class Admin::TraineesController < AdminController

	#TODO - implement CRUD Operation later
  before_action :set_trainee, only: [:edit, :update, :show, :destroy]


	def index
		@trainees = Trainee.all
	end

	def new
		@trainee = Trainee.new
	end


  def create
     @trainee = Trainee.new(trainee_params)
     if @trainee.save
      redirect_to admin_trainees_path
    else
      render :new
    end
  end


	def edit
	end

	def show
	end

	def update
		if @trainee.update(trainee_params)
			redirect_to admin_trainees_path
		else
			render :edit
		end
	end	

	def destroy
		if @trainee.destroy
			redirect_to admin_trainees_path
		end
	end	

	private
		def trainee_params
			params.require(:trainee).permit(:name, :email, :address, :contact_number, :college_name, :course_name)
		end


		def set_trainee
			@trainee = Trainee.find(params[:id])
		rescue ActiveRecord::RecordNotFound => error
			redirect_to admin_trainees_path, notice:error
		end

end
