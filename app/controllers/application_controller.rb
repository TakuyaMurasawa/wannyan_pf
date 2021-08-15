class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:user_name, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :house_number, :other, :phone_number])
  end
end
