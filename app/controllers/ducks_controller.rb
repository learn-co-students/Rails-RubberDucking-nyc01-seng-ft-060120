class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def create
    @duck = Duck.create(params[:id])
    redirect_to duck_path(@duck.id)
  end

  def update
    @duck = Duck.find(params[:id])
    @duck.update(duck_params)

    redirect_to duck_path(@duck.id)
  end

  def edit
    @duck = Duck.find(params[:id])
  end

  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
  
   
end
