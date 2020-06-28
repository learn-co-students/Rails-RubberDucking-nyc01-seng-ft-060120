class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to ducks_url
  end

  def edit
  end

  def update
    @student.update(student_params)
    redirect_to @student
  end

  def show
  end

  private
  def student_params
    params.require(:student).permit(:name, :mod)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
