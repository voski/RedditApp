class SessionsController < ApplicationController

  def new
    redirect_to user_url(current_user) if logged_in?
    @user = User.new
  end

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if !@user.nil?
      login_user(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end
end
