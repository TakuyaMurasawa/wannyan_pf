class AnimalsController < ApplicationController
before_action :authenticate_customer!, only: [:edit, :new, :show]

before_action :correct_post,only: [:edit]

def authenticate_customer!
       unless customer_signed_in?
        redirect_to new_customer_session_path
       end
end

def correct_post
        @animal = Animal.find(params[:id])
    unless @animal.customer.id == current_customer.id
      redirect_to animals_path
    end
end

  def new
    @animal = Animal.new
  end

  def index
     @search_params = Search.new
     @animals = Animal.all.page(params[:page]).per(8).reverse_order
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.customer_id = current_customer.id
    # @animal = Animal.create params.require(:animal).permit(:title,  :tipe, :sex, :birthday, :prefecture, :vaccine, :vaccine_date, :castrate, :profile, :other, images: [], )
    @animal.save
    redirect_to animal_path(@animal)
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      redirect_to animal_path(@animal.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to customer_path(current_customer.id)
  end

  private

  def animal_params
    params.require(:animal).permit(:image, :title, :tipe, :sex, :birthday, :prefecture, :vaccine, :vaccine_date, :castrate, :profile, :other,)
  end

end
