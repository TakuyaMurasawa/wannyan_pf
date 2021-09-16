class Admin::AnimalsController < ApplicationController
  def index
    @animals = Animal.page(params[:page])
  end

  def show
    @animal = Animal.find(params[:id])
  end

  # 自動処理機能実装後削除予定
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    
  end
end
