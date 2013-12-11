class RecipientsController < ApplicationController

  def index
    @recipients = Recipient.all
  end

  def show
    @recipient = Recipient.find_by(id: params[:id])
  end

  def new
  end

  def create
    @recipient = Recipient.new
    @recipient.first_name = params[:first_name]
    @recipient.last_name = params[:last_name]
    @recipient.birthday = params[:birthday]
    @recipient.anniversary = params[:anniversary]
    @recipient.other_holidays = params[:other_holidays]
    @recipient.relationship = params[:relationship]
    @recipient.children = params[:children]

    if @recipient.save
      redirect_to recipient_url(@recipient)
    else
      render 'new'
    end
  end

  def edit
    @recipient = Recipient.find_by(id: params[:id])
  end

  def update
    @recipient = Recipient.find_by(id: params[:id])
    @recipient.first_name = params[:first_name]
    @recipient.last_name = params[:last_name]
    @recipient.birthday = params[:birthday]
    @recipient.anniversary = params[:anniversary]
    @recipient.other_holidays = params[:other_holidays]
    @recipient.relationship = params[:relationship]
    @recipient.children = params[:children]

    if @recipient.save
      redirect_to recipients_url, notice: "Recipient updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @recipient = Recipient.find_by(id: params[:id])
    @recipient.destroy

    redirect_to recipients_url, notice: "Recipient deleted."
  end
end
