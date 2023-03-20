
class StudentsController < ApplicationController 
  before_action :authenticate_student_user!
 before_action :set_student, only: [:edit, :update, :show, :destroy]

  def index
    @q = Student.ransack(params[:q])
    @students = @q.result(distinct: true)
  end

  def new
    @student = Student.new
  end

  def create
     @student = Student.new(student_params)
     if @student.save
      redirect_to students_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
     if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
     if @student.destroy
      redirect_to students_path
    end
  end


  private
  def student_params
    params.require(:student).permit(:first_name, :middle_name, :last_name, :personal_email, :contact_number, :address_line_1, :address_line_2, :city, :state, :country, :zipcode)
  end

  def set_student
    @student = Student.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
    redirect_to students_path, notice:error
  end

end
