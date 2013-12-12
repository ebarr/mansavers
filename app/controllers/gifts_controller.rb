class GiftsController < ApplicationController

  def index
    @gifts = Gift.all
    @gift = Gift.new
    @gift.recipient_first_name = params[:recipient_first_name]
    @gift.recipient_last_name = params[:recipient_last_name]
    @gift.address = params[:address]
    @gift.city = params[:city]
    @gift.state = params[:state]
    @gift.zip_code = params[:zip_code]

    if @gift.save
      render
    else
      render 'index'
    end
  end

  def show
    @gift = Gift.find_by(id: params[:id])
  end


  def edit
    @gift = Gift.find_by(id: params[:id])
  end

  def update
    @gift = Gift.find_by(id: params[:id])

    if @gift.save
      redirect_to gifts_url, notice: "Gift updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @gift = Gift.find_by(id: params[:id])
    @gift.destroy

    redirect_to gifts_url, notice: "Gift deleted."
  end
end
