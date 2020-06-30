class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @ducks = @student.ducks
  end
  
  def new
    @student = Student.new
    @student.ducks.build
  end
  
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student successfully created"
      redirect_to @student
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to new_student_path 
    end
  end
  
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])
      if @student.update_attributes(student_params)
        flash[:success] = "Student was successfully updated"
        redirect_to @student
      else
        flash[:errors] = @student.errors.full_messages
        redirect_to edit_student_path(@student)
      end
  end
  
  private

  def student_params
    params.require(:student).permit(:name, :mod)
  end
  

end
