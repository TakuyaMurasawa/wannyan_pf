class CustomersController < ApplicationController
    before_action :authenticate_customer!, only: [:edit, :show]

def authenticate_customer!
       unless customer_signed_in?
        redirect_to new_customer_session_path
       end
end

  def show
    @customer = Customer.find(params[:id])
    @currentCustomerEntry=Entry.where(customer_id: current_customer.id)
    @customerEntry=Entry.where(customer_id: @customer.id)
    unless @customer.id == current_customer.id
      @currentCustomerEntry.each do |cc|
        @customerEntry.each do |c|
          if cc.room_id == c.room_id then
            @isRoom = true
            @roomId = cc.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @entry = Entry.new
      end
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:user_name, :last_name, :first_name, :last_name_kana, :first_name_kana, :postcode, :prefecture, :city, :house_number,:other, :phone_number, :email )
  end

end
