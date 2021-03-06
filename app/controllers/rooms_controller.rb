class RoomsController < ApplicationController
  def create
    @room = Room.create(customer: current_customer)
    @entry1 = Entry.create(room_id: @room.id, customer_id: current_customer.id)
    @entry2 = Entry.create(params.require(:entry).permit(:customer_id, :room_id).merge(room_id: @room.id))
    redirect_to room_path(id:@room.id)
  end

  def show
    @room = Room.find(params[:id])
    if Entry.where(customer_id: current_customer.id,room_id: @room.id).present?
      @messages = @room.messages
      @message = Message.new
      @entries = @room.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end
end
