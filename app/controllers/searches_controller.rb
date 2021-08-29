class SearchesController < ApplicationController
  # def search
  #   if params[:profile].present?
  #     @animals = @animals.get_by_profile params[:profile]
  #   end
  #   if params[:tipe].present?
  #     @animals = @animals.get_by_tipe params[:tipe]
  #   end
  #   if params[:sex].present?
  #     @animals = @animals.get_by_sex params[:sex]
  #   end
  #   if params[:vaccine].present?
  #     @animals = @animals.get_by_vaccine params[:vaccine]
  #   end
  #   if params[:castrate].present?
  #     @animals = @animals.get_by_castrate params[:castrate]
  #   end
  # end
  def search
    @search_params = reservation_search_params
    # @searches = Search.search(@search_params).joins(:animal)
    @searches = Animal.search(@search_params).page(params[:page]).per(8).reverse_order
  end

  private

  def reservation_search_params
    params.fetch(:search, {}).permit(:profile, :tipe, :sex, :prefecture, :vaccine, :castrate)
  end
end
