class DucksController < ApplicationController
  before_action :set_duck, only: [:edit, :show, :update]
  def index
    @ducks = Duck.all
  end

  def new
    @duck = Duck.new
  end
  
  def create
    @duck = Duck.create(duck_params)
    redirect_to @duck
  end

  def edit
  end

  def update
    @duck.update(duck_params)
    redirect_to @duck
  end

  def show
  end

  private
  def duck_params
    params.require(:duck).permit(:name, :description, :student_id, student_attributes: [:name, :id])
  end

  def set_duck
    @duck = Duck.find(params[:id])
  end

end
