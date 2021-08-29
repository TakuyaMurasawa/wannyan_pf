class MessagesController < ApplicationController
  def create
    if Entry.where(customer_id: current_customer.id, room_id: params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:customer_id, :message, :room_id).merge(customer_id: current_customer.id))
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to "/rooms/#{@message.room_id}"
  end
end
