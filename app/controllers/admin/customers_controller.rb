class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.page(params[:page])
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:user_name, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :house_number,:other, :phone_number, :email )
  end
end
