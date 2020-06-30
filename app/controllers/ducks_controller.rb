class DucksController < ApplicationController
before_action :set_duck, only: [:show, :edit, :update, :destory]
  
  def index
    @ducks = Duck.all
  end

  def show
    
  end
  
  def edit
    
  end
  
  def update
    if @duck.update_attributes(strong_params)
      flash[:success] = "Duck was successfully updated"
      redirect_to @duck
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to edit_duck_path(@duck)
    end
  end

  def new
    @duck = Duck.new
  end
  
  
  def create
    @duck = Duck.new(strong_params)
    if @duck.save
      flash[:success] = "Duck successfully created"
      redirect_to @duck
    else
      flash[:errors] = @duck.errors.full_messages
      redirect_to new_duck_path
    end
  end
  

  private

  def set_duck
    @duck = Duck.find(params[:id])
  end
  
  def strong_params
    params.require(:duck).permit(:name, :description, :student_name)
  end
end
