class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def index
    @animal = Animal.where(is_active: true)
  end

  def create
    @animal = Animal.create params.require(:comment).permit(:content, images: [])
  end

  def edit
    @animal = Animal.find(params[:id]) 
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update params.require(:comment).permit(:content, images: [])
    redirect_to @comment
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirecy_to 
  end
  
  private
  
  def animal_params
    
  end
  
end
