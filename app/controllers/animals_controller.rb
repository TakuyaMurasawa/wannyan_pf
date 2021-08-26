class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end

  def index
    @animals = Animal.all
  end

  def create
    @animal = Animal.create params.require(:animal).permit(:title, :tipe, :sex, :birthday, :prefecture, :vaccine, :vaccine_date, :castrate, :profile, :other, images: [])
    redirect_to animal_path
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update params.require(:animal).permit(:title, images: [])
    redirect_to @comment
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirecy_to customer_path
  end

  private

  def animal_params
    params.require(:animal).permit(:title, :tipe, :sex, :birthday, :prefecture, :vaccine, :vaccine_date, :castrate, :profile, :other)
  end

end
