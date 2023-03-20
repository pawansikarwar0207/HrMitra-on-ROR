class DocumentsController < ApplicationController
  before_action :authenticate_student_user!
  before_action :set_document, only: [:edit, :update, :show, :destroy]

  def index
  	@documents = Document.all  
  end

  def new
    @document = Document.new
  end

  def create
     @document = Document.new(document_params)
     if @document.save
      redirect_to documents_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end


  def update
     if @document.update(document_params)
      redirect_to documents_path
    else
      render :edit
    end
  end

  def destroy
     if @document.destroy
      redirect_to documents_path
    end
  end


  private
  def document_params
    params.require(:document).permit(:name, :doc_type, :student_id, :image)
  end

  def set_document
  	@document = Document.find(params[:id])
  rescue ActiveRecord::RecordNotFound => error
  	redirect_to documents_path, notice:error
  end
end
