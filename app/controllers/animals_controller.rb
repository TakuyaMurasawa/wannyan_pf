class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def index
    @animal = animal.all(pramus[:id])
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
  end

  def destroy
  end
  
  private
  
  def animal_params
    
  end
  
end
