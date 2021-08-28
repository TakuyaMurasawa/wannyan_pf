class CustomersController < ApplicationController
  

  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
  end

  private

  def customer_params
    params.require(:customer).permit(:user_name, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :house_number,:other, :phone_number, :email )
  end
end
