class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end
  
  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(params[:id])
    # if @student.valid?
    redirect_to student_path(@student.id)
    # else
    #   flash[:my_errors] = @student.errors.full_messages      
    #   redirect_to new_student_path
    # end
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)

    redirect_to student_path(@student.id)
  end

  def edit
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:name,:mod)
  end


end
