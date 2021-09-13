class Admin::AnimalsController < ApplicationController
  def index
    @animals = Animal.page(params[:page])
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def destroy
  end
end
