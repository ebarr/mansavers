class UsersController < Devise::RegistrationsController

prepend_before_filter :authenticate_scope!, :only => [:edit]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    # @user.recipient_first_name = params[:recipient_first_name]
    # @user.recipient_last_name = params[:recipient_last_name]
    # @user.username = params[:username]
    # @user.address = params[:address]
    # @user.city = params[:city]
    # @user.state = params[:state]
    # @user.zip_code = params[:zip_code]

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
    @user = User.find(params[:id])
    if @user.update(user_params)
      if @user.save
        redirect_to users_url
      else
        render 'edit'
      end
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy

    redirect_to users_url
  end

private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :recipient_first_name, :recipient_last_name, :address, :city, :state, :zip_code)
  end
end
