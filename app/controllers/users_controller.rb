class UsersController < ApplicationController

# before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.recipient_first_name = params[:recipient_first_name]
    @user.recipient_last_name = params[:recipient_last_name]
    @user.username = params[:username]
    @user.address = params[:address]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip_code = params[:zip_code]

    if @user.save
      redirect_to thanks_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.username = params[:username]

    if @user.save
      redirect_to users_url
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url
  end
end
